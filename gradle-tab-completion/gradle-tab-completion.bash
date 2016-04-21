#https://gist.github.com/Ea87/46401a96df31cd208a87
_gradle()
{
local cur=${COMP_WORDS[COMP_CWORD]}
local gradle_cmd='gradle'
if [[ -x ./gradlew ]]; then
gradle_cmd='./gradlew'
fi
if [[ -x ../gradlew ]]; then
gradle_cmd='../gradlew'
fi

local commands=''
local cache_dir="$HOME/.gradle_tabcompletion"
mkdir -p $cache_dir

# TODO: include the gradle version in the checksum?  It's kinda slow
#local gradle_version=$($gradle_cmd --version --quiet --no-color | grep '^Gradle ' | sed 's/Gradle //g')

local gradle_files_checksum='';
if [[ -f build.gradle ]]; then # top-level gradle file
gradle_files_checksum=$(\
find . -name build.gradle 2> /dev/null \
| sort -u \
| xargs cat \
| git hash-object --stdin\
)
else # no top-level gradle file
gradle_files_checksum='no_gradle_files'
fi
if [[ -f $cache_dir/$gradle_files_checksum ]]; then # cached! yay!
commands=$(cat $cache_dir/$gradle_files_checksum)
else # not cached! boo-urns!
root_tasks="$($gradle_cmd --no-color --quiet tasks | grep -E '^[a-z]' | awk '{print $1}' | sort | uniq)"
sub_tasks="$($gradle_cmd --no-color --quiet tasks --all | grep -E '^[a-z]' | awk '{print $1}' | sort | uniq)"
all_tasks="$(echo "$root_tasks"; echo "$sub_tasks")"
commands="$(echo "$all_tasks" | sed ``/**/s//:/'')"
if [[ ! -z $commands ]]; then
echo "$commands" > $cache_dir/$gradle_files_checksum
fi
fi
local singledash='-? -h -a -b -c -D -d -g -I -i -m -P -p -q -S -s -t -u -v -x'
local doubledash='--help  --no-rebuild --all --build-file --settings-file --console --continue --configure-on-demand --system-prop --debug --gradle-user-home --gui --init-script --info --dry-run --offline --project-prop --project-dir --parallel --max-workers --profile --project-cache-dir --quiet --recompile-scripts --refresh-dependencies --rerun-tasks --full-stacktrace --stacktrace --continuous --no-search-upwards --version --exclude-task --no-color --parallel-threads --daemon --foreground --no-daemon --stop'

case "${cur}" in
--*)
COMPREPLY=( $(compgen -S " " -W "${doubledash}" -- ${cur}) )
return
;;
-*)
COMPREPLY=( $(compgen -S " " -W "${singledash}" -- ${cur}) )
return
;;
*)
esac
if [[ $cur != ":"* ]]; then
cur=":$cur"
fi
partial=${cur##*:}
parent=$(basename $cur $partial)
COMPREPLY=( $(compgen -W "$(echo "$commands")" -- $cur | sed "s/^$parent//" | sed 's/:.*/:/' | uniq | sort) )
}

complete -F _gradle -o nospace gradle
complete -F _gradle -o nospace gradlew
complete -F _gradle -o nospace ./gradlew