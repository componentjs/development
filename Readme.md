This repository is for component developers.  
It's the master project and contains all modules which are needed for [component](https://github.com/componentjs/component).

# Usage

### Initial Setup

```
git clone https://github.com/componentjs/development.git
git submodule update --init
./init-npm.sh
```

To clean the node_modules of all modules run
`./git-submodules.sh clean-node_modules`

### Developing

You should use node 0.11, to avoid build steps for all the modules.

If you make change in mutliple modules you can just type `git status` but this shows you only if a submodule has changed (via SHA) not the changed files in each submodule.  
You may want to use `git submodule foreach git status` or any other combination with `submodule foreach`. Here some useful examples:

- `git submodule foreach git status -s`
- `git submodule foreach git diff`

If you want to commit your changes, you need to commit them first wihtin each submodule. At the end you can commit the references within the master project.

To update the submodules run `git submodule update --remote --rebase`.

For more information visit [git submodules tips](https://git.wiki.kernel.org/index.php/GitSubmoduleTutorial)