# JEFather

git repo with submodules tracking the AIT-forks of openjevis-repos

## Development with forks

When using the terminology `upstream` the original repo hosted on https://github.com/OpenJEVis is meant. The repository hosted on https://github.com/AIT-JEVis is called `origin`.

New code should be commited and pushed to branches in `origin` (the repo hosted at `AIT-JEVis`). Afterwards create a pull-request to merge the changes into the repository of `openjevis`. When the changes are in the master branch of openjevis the changes can be pulled from `upstream/master` into `origin/master`.


## Managing the repository
automatically initialize and download the repository including the submodules with the command

`git clone --recursive git@github.com:AIT-JEVis/JEFather.git`

`git submodule foreach "git checkout master"`

### Keep up to date with AIT-changes
#### Pull latest JEFather status
To pull changes for JEMother and all submodules and then checkout the (by JEMother) specified commits we reccomend to define a git-alias:

`git config alias.pullall '!f(){ git pull "$@" && git submodule update --init --recursive; }; f'`

and then instead of just `git pull` use `git pullall`

#### Pull latest submodule-changes
When JEFather does not track the latest AIT-commit the submodules can be updated with the following command:

`git submodule update --remote --merge`

### Keep up to date with upstream (openjevis)
To update all submodules to latest upstream-commit use:

```
git submodule foreach "git fetch upstream && git checkout master && git merge upstream/master"
```

## Building

### Command line
When in the root folder of `JEFather` use maven to build the jar-packages. The built packages are in the sumbmodules-folders in a folder named `target`. The command to build is:

`mvn package`
