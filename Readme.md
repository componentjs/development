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
`./git-submodules.sh clean`

### Developing
run `git submodule update` to update

You should use node 0.11, to avoid build steps for all the modules.

