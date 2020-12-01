ini_open("score.ini");//open file
global.currentscore=ini_read_real("score","current",0);
global.highscore=ini_read_real("score","high",0);//load scores high if present, otherwise set as 0
global.secondscore=ini_read_real("score", "second",0);
global.thirdscore=ini_read_real("score", "third",0);
ini_close();//close ini

ini_open("gems.ini");//open file
global.spacegems=ini_read_real("gems","space",0);//load gems score if present, otherwise set as 0
ini_close();//close ini
