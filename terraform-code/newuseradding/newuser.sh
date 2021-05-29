username1=$1
username2=$2


echo "----who is executing this job---"
sudo id

echo "---------NEW USER ADDING-------"

sudo useradd $username1

sudo useradd $username2
