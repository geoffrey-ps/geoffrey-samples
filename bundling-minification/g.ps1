requires geoffrey-less

# From Powershell console, call this using "geoffrey -taskName css".
task css {
    dir "css/*.css" |
	src |
	cssmin -CommentMode Hacks |
	dest "output/combined.css"
}

# From Powershell console, call this using "geoffrey -taskName js".
task js {
	src "js/a.js", "js/b.js" |
	jsmin -MinifyCode 1 |
	dest "output/combined.js"
}

# Default tasks can be invoked simply by calling "geoffrey" in the PowerShell console.
# The "default" task will run both the "css" and "js" tasks when invoked.
task default -dependsOn css, js