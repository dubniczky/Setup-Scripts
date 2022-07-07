# List Extensions

```sh
code --list-extensions
```

## List auto install

### Linux (Bash)

```sh
code --list-extensions | xargs -L 1 echo code --install-extension
```

### Windows (PowerShell)

```ps1
code --list-extensions | % { "code --install-extension $_" }
```
