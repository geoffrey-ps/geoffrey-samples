requires geoffrey-less

# From Powershell console, call this using "geoffrey -taskName less".
task less {
    src "less/site.less" |
    less |
    dest "output/site.css"
}

# Default tasks can be invoked simply by calling "geoffrey" in the PowerShell console.
task default -dependsOn less