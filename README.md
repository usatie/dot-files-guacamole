# dot-files-guacamole

## How to backup
1. move dot files to this directory `mv ~/filename ./filename`
2. create symlink `ln -s $(pwd)/filename ~/filename`
3. append the ln command to `restore.sh`

## How to restore
1. `./restore.sh`
2. :tada:
