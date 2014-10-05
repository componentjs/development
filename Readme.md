This repository is for component developers.  
It's the root project and contains all modules which you need to build [component](https://github.com/componentjs/component).

# Usage

### Initial Setup

```
git clone https://github.com/componentjs/development.git
git submodule update --init
git submodule foreach git checkout master
./init-npm.sh install
```

To clean the node_modules of all modules run
`./git-submodules.sh clean-node_modules`

If you want to re-npm-link without an `npm install` just run:

`./init-npm.sh`

### Developing

To update all submodules run: `git submodule update --remote --rebase`  
It's important to use `--rebase` otherwise you get a __detached HEAD__ problem.

You still need to update the root project wiht `git pull`, especially before you want to update the submodule reference.

If you make change in mutliple modules you can just type `git status` but this shows you only if a submodule has changed (via SHA) not the changed files in each submodule.  
You may want to use `git submodule foreach git status` or any other combination with `submodule foreach`. Here some useful examples:

- `git submodule foreach git status -s`
- `git submodule foreach git diff`

If you want to commit your changes, you need to commit them first wihtin each submodule. At the end you can commit the references within the root project.

For more information visit [git submodules tips](https://git.wiki.kernel.org/index.php/GitSubmoduleTutorial)

#### Running component

You should use node 0.11, to avoid build steps for all the modules.  

Find out where your npm symlinks were created: `which component`, the result could looks like: `/usr/local/share/npm/bin/component`. Use this path to run node with the harmony flag:

`node --harmony /usr/local/share/npm/bin/component-build`

You can debug component with [node-inspector](https://github.com/node-inspector/node-inspector):

`node-debug --nodejs --harmony /usr/local/share/npm/bin/component-build`

To create a breakpoint just write `debugger` in the source code where you want to pause.