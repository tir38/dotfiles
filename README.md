All of my imported `.bash_profile` snippets and some scripts I've grabbed from around the way for Android development.


1. Update `~./bash_profile`:

```
# ——
# — alias to .bash_profile in [repo directory]
# ——
source [repo directory]/dotfiles/.bash_profile
```

2. pull submodule(s)

```
$ git submodule init
$ git submodule update
```

3. build dex-methods-count:

```
$ cd dex-method-counts/
$ ./gradlew assemble
```

