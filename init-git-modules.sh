modules[0]="build.js"
modules[1]="builder2.js"
modules[2]="builder-autoprefixer"
modules[3]="console.js"
modules[4]="downloader.js"
modules[5]="flatten.js"
modules[6]="ls.js"
modules[7]="manifest.js"
modules[8]="outdated.js"
modules[9]="pin.js"
modules[10]="remotes.js"
modules[11]="require2"
modules[12]="resolver.js"
modules[13]="search.js"
modules[14]="update.js"
modules[15]="validator.js"
modules[16]="watcher.js"
modules[17]="component"

modules[31]="guide"
modules[32]="spec"

for i in ${modules[@]}
do
    url="https://github.com/componentjs/${i}"
    git submodule add $url || echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILED"
done

git submodule add https://github.com/component/component.github.io