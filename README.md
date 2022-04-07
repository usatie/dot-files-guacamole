# dot-files-guacamole

## How to backup
1. move dot files to this directory `mv ~/filename ./filename`
2. create symlink `ln -s $(pwd)/filename ~/filename`
3. append the ln command to `restore.sh`

## How to restore dotfiles
1. `./restore.sh`
2. :tada:

## How to setup a new instance
1. Create a ssh key: `ssh-keygen -t rsa -C 'susami@student.42tokyo.jp' -f ~/.ssh/id_rsa`
2. Register the ssh key to github: https://github.com/settings/ssh/new
3. Register the ssh key to intra: https://profile.intra.42.fr/gitlab_users
4. Clone this repo: `git clone git@github.com:usatie/dot-files-guacamole.git`
5. Run the setup script(you may need it twice): `./setup.sh`
6. :tada:
