echo WORKING DIR
pwd

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo SCRIPT PATH
echo $SCRIPTPATH

sudo unlink ~/.bash_profile
ln -sv $SCRIPTPATH/.bash_profile ~

source ~/.bash_profile
