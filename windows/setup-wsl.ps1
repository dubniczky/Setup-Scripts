function wgti {
    param( [Parameter()] [String] $Package )
    winget install --accept-package-agreements $Package
}

wgti Canonical.Ubuntu
wgti kalilinux.kalilinux
