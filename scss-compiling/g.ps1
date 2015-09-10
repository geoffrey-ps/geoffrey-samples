requires geoffrey-sass

# From Powershell console, call this using "geoffrey -taskName scss".
task scss {
    src "scss/site.scss" |
    less |
    dest "output/site.css"
}

# Default tasks can be invoked simply by calling "geoffrey" in the PowerShell console.
task default -dependsOn scss