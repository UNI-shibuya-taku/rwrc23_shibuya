# RUN google-chrome --new-window https://drive.google.com/file/d/1AdCAw6NiVh2lg-FVPgSw6jdtMDTxHpUZ/view 
# RUN google-chrome --new-window https://www.dropbox.com/sh/5gel5pvjm6wh8xn/AABPHDa7t4U8v7X2Jb6EM9Mia?dl=0 


S1="https://drive.google.com/u/0/uc?id=1AdCAw6NiVh2lg-FVPgSw6jdtMDTxHpUZ&export=download";
S2="tsukuba.bag.zst";
CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://drive.google.com/uc?export=download&id=$S1" -O- | sed -En 's/.*confirm=([0-9A-Za-z_]+).*/\1/p');
wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$CONFIRM&id=$S1" -O $S2;
rm -f /tmp/cookies.txt