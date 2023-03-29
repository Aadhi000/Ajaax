if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Aadhi000/Ajaax.git /Ajaax
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ajaax
fi
cd /Ajaax
pip3 install -U -r requirements.txt
echo "Startin...."
python3 bot.py
