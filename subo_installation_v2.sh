#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo

echo -e "step 1: ${GREEN}Getting python module Cowsay...${NOCOLOR}"
pip install cowsay

echo

echo -e "step 2: ${GREEN}Creating python code...${NOCOLOR}"
touch subo.py
echo 'import getpass' >> subo.py
echo 'import cowsay' >> subo.py
echo 'username = "[sudo] password for "+str(getpass.getuser())+":"' >> subo.py
echo 'assword = getpass.getpass(prompt=username)' >> subo.py
echo 'cowsay.cow("LMAO YOUR PASSWORD IS: "+assword)' >> subo.py

echo

echo -e "step 3: ${GREEN}Making the subo command...${NOCOLOR}"
touch subo
echo '#!/bin/bash' >> subo
echo '/bin/python3 /usr/games/subo.py' >> subo

touch sufo
echo '#!/bin/bash' >> sufo
echo '/bin/python3 /usr/games/subo.py' >> sufo

touch suso
echo '#!/bin/bash' >> suso
echo '/bin/python3 /usr/games/subo.py' >> suso

touch Sudo
echo '#!/bin/bash' >> Sudo
echo '/bin/python3 /usr/games/subo.py' >> Sudo

echo

echo -e "step 4: ${GREEN}Moving python code to required destination...${NOCOLOR}"
sudo mv subo.py /usr/games/

echo

echo -e "step 5: ${GREEN}Making the subo command executable...${NOCOLOR}"
sudo chmod +x subo
sudo chmod +x sufo
sudo chmod +x suso
sudo chmod +x Sudo

echo

echo -e "step 6: ${GREEN}Moving the subo command...${NOCOLOR}"
sudo mv subo /usr/bin/
sudo mv sufo /usr/bin/
sudo mv suso /usr/bin/
sudo mv Sudo /usr/bin/
