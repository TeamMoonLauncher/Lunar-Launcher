score=global.currentscore;
if (global.highscore <= 0) && (global.secondscore <= 0) && (global.thirdscore <= 0) {
ini_open("score.ini");//open ini
ini_write_real("score","high",score);//write a value
ini_close();//close value
global.highscore=score;//update highscore
} else if (score >= global.highscore) && (score > global.secondscore && global.thirdscore) //do this if bigger than current score
{
ini_open("score.ini");//open ini
ini_write_real("score","high",score);//write a value
ini_close();//close value
global.highscore=score;//update highscore
} else if (score>=global.secondscore) && (score<global.highscore)
{
ini_open("score.ini");//open ini
ini_write_real("score","second",score);//write a value
ini_close();//close value
global.secondscore=score;//update highscore
} else if (score>=global.thirdscore) && (score<global.secondscore)
{
ini_open("score.ini");//open ini
ini_write_real("score","third",score);//write a value
ini_close();//close value
global.thirdscore=score;//update highscore
}

gems=global.spacegems;//get an integer
if (gems>=global.spacegems)//do this if bigger than current score
{
ini_open("gems.ini");//open ini
ini_write_real("gems","space",gems);//write a value
ini_close();//close value
global.spacegems=gems;//update highscore
}