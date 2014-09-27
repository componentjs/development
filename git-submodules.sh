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

if [ "$1" == "init" ]; then
    modules[31]="guide"
    modules[32]="spec"

    for i in ${modules[@]}
    do
        url="https://github.com/componentjs/${i}"
        git submodule add $url || echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILED"
    done

    git submodule add https://github.com/component/component.github.io

elif [ "$1" == "clean-node_modules" ]; then
    for i in ${modules[@]}
    do
        rm -rf "$i/node_modules"
    done

elif [ "$1" == "publish" ]; then
    changeModules=`git status | grep "(new commits)" | awk '{ printf "%s ", $2 }'`
    for i in ${changeModules[@]}
    do
        echo "cd $i && npm publish && cd .."
    done

elif [ "$1" == "push" ]; then
    changeModules=`git status | grep "(new commits)" | awk '{ printf "%s ", $2 }'`
    for i in ${changeModules[@]}
    do
        echo "cd $i && git push && cd .."
    done

elif [ "$1" == "commit" ]; then
    changeModules=`git status | grep "modified content" | grep modified: | awk '{ printf "%s ", $2 }'`
    echo "copy and paste these lines (don't forget last line):"
    echo
    for i in ${changeModules[@]}
    do
        echo "cd $i && git commit -m \"$2\" && cd .."
    done

elif [ "$1" == "test" ]; then
    changeModules=`git status | grep -E 'modified content|foo' | grep "modified:" | awk '{ printf "%s ", $2 }'`
    echo "copy and paste these lines (don't forget last line):"
    echo
    for i in ${changeModules[@]}
    do
        echo "cd $i && npm test && cd .."
    done

else
    echo "missing arg: {init|clean|test|publish|commit <message>}"
fi

