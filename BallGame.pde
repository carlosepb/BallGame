import ddf.minim.*;
import processing.sound.*;
import gifAnimation.*;

boolean pause;
boolean status;
GifMaker fileGIF;

float jump;
double jumpState;
int obstacle;
int obstacleLength;
float red;
AudioInput IN;
Amplitude nivel;
Minim minim;
int count;
int velocity;
int score;


void setup() {
    //fileGIF= new GifMaker(this,"animation.gif");
    //fileGIF.setRepeat(0);
    //----------Field------------
    size(1200,700);
    pause=true;
    status=false;
    red=100;
    jump = 0;
    count =400;
    obstacle = width+50;
    obstacleLength = 50;
    minim = new Minim(this);
    IN = minim.getLineIn(Minim.STEREO,2048);
    score=0;
    velocity=5;
       
}

void draw() {
    background(red,100,100);
      
    if(pause==false){
      
     jumpState = IN.left.level()*1000;
      
     if(jump>0){
       jump-=2 ;
       red+=0.25;
       count-=1;
     }else{
       count=400;
       red=100;
     }
          
     if(jumpState>10.){
       jump = 120;
     }
     
     if(obstacle+obstacleLength>0){
       obstacle-=velocity;
     }else{
       obstacle=width+obstacleLength;
       obstacleLength=(int)random(50,200);
       velocity+=5;
     }
     
     if((((obstacle-obstacleLength/2<75 && 25>obstacle-obstacleLength/2) || (obstacle+obstacleLength/2<75 && 25>obstacle+obstacleLength/2))
             && jump<50) || count<0)
      {
         pause=true;
         jump=0;
         obstacle=width+obstacleLength;
         velocity=5;
         score=0;
      }
     
     for(int i=0;i<IN.left.size()-1;i++)
     {
       line(i, height/2+IN.left.get(i)*height/2, i+1, height/2+IN.left.get(i+1)*height /2);
       line(i, 3*height/2+ IN.right.get(i)* height/2, i+1, 3*height/2+IN.right.get(i+1)*height/2);
     }
   
     textSize(60);
     text("ENERGY: "+count, width/8, height/4);
     text("SCORE: "+ score, width/2, height/4);
     
     circle(50,height/2-jump,50);
     rect(obstacle,height/2-25,obstacleLength,50);
     score++;
    } else {
      if(status==true){
        
      } else {
        fill(255, 255, 255);
        rect(400, 160, 400, 250, 7);
        rect(100, 160, 240, 370, 7);
        
        fill(0, 0, 0);
        rect(500, 310, 200, 50, 7);
        square(130, 300, 180);
          
        fill(50);   
        String pauseText = "Press space key to continue or pause.";
        textSize(40);
        text(pauseText, 420, 170, 400, 540);
        text("Controllers", 110, 170, 400, 540);
        
        fill(255, 255, 255);
        textSize(30);
        text("space", 550, 340);
        textSize(30);
        text("Just do\nnoise and\nthe ball\nascend", 155, 330);
      }     
    }  
  //fileGIF.addFrame();
}

void stop()
{
  IN.close() ;
  minim.stop();
  super.stop();
}

void keyPressed()
{
  if (key == ' ')
  {
    pause = !pause;
    if(status==true){
      status = false;
    }
    
  }
}



void mousePressed ( ) {
  //fileGIF.finish();
}
