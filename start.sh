if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/918088529/advance /advance 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /advance 
fi
cd /advance 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
