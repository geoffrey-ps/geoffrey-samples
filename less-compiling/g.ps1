requires geoffrey-less

task less {
    src "less/site.less" |
        less |
        dest "output/site.css"
}