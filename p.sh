p () {
  if [ $PROTOTYPE_FOLDER ]; then
    if [ $1 ]; then
      NAME=$1
    else
      NAME=proto-$[($RANDOM % 13843) + 1]
    fi
    cd $PROTOTYPE_FOLDER
    mkdir $NAME
    git clone git@github.com:supercrabtree/prototype $NAME
    cd $NAME
    npm install && bower install && echo '\n  \033[0;32mPrototype ready!\n\n  run using\033[0m npm start\n  \033[0;32mchange the remote using \033[0mgit remote set-url origin git@github.com:user/other-repo.git'
  else
    echo '\n\033[0;32mYou must set environment varible for where your prototypes will go, put \033[0mexport PROTOTYPE_FOLDER=~/dev/prototypes \033[0;32m in your .zshrc. Make sure the folder exists!\033[0m'
  fi
}
