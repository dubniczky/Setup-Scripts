# List Extensions

Scripts to list all installed extenstions in VSC.



## Windows

List

```ps1
code --list-extensions
```

List auto install

```ps1
code --list-extensions | % { "code --install-extension $_" }
```


## Linux

List

```sh
code --list-extensions
```

List auto install

```sh
code --list-extensions | xargs -L 1 echo code --install-extension
```