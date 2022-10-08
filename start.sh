if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tharun1828/namba.git /namba
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /namba
fi
cd /namba
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
