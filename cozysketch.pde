int xpos=830;
int xpos2=833;
int hide=20;
void setup(){
  fullScreen(); 
  background(193, 212, 169);
}

void draw(){
  background(193, 212, 169);
  
  //couch
  fill(255,235, 125);
  stroke(255, 229, 84);
  strokeWeight(4);
  rect(600,600,500, 200, 3);
  fill(240, 216, 81);
  rect(650, 700, 410, 5);
  
  //people
  fill(255, 222, 253);
  stroke(0);
  strokeWeight(1);
  ellipse(730,740, 70,70);
  ellipse(800,760, 70,70);
    //smiles
    arc(735, 735, hide, hide, -PI, 0);
    arc(800, 762, hide, hide, -PI, 0);
    if(frameCount%10== 0){
     hide=0; 
    }
    else{
      hide=20; 
    }
    fill(0);
    ellipse(730, 745, 4, 4);
    ellipse(748, 745, 4, 4);
    ellipse(790, 772, 4, 4);
    ellipse(810, 772, 4, 4);
  
   //bookshelf
   fill(106, 108, 110);
   stroke(106, 108, 110);
    rect(1200, 300, 50, 200);
   
   //books 
   fill(145, 0, 24);
   stroke(145, 0, 24);
     rect(1210, 310, 30, 10);
     rect(1210, 360, 30, 10);
     rect(1210, 415, 30, 10);
     
   fill(227, 144, 0);
   stroke(227, 144, 0);
   rect(1210, 330, 30, 10);
   rect(1210, 450, 30, 10);
   
   fill(250, 229, 0);
   stroke(250, 229, 0);
   rect(1210, 345, 30, 10);
   rect(1210, 440, 30, 10);
    
   fill(10, 4, 122);
   stroke(10, 4, 122);
   rect(1210, 370, 30, 10);
   rect(1210, 385, 30, 10);
   rect(1210, 465, 30, 10);
   
   fill(24, 92, 0);
   stroke(24, 92, 0);
   rect(1210, 400, 30, 10);
   rect(1210, 480, 30, 10);
   
   fill(255,255,255);
   stroke(255);
   ellipse(1225, 433, 5, 5);
  
   //table
   fill(176);
   stroke(0);
   rect(750, 340, 160, 160);
   
   //window
   fill(235, 235, 235);
   rect(100, 100, 250, 150);
   rect(100, 260, 250, 150);
   
   //projector screen
   rect(700, 100, 450, 30);
   
   //candle
   fill(235);
   stroke(470);
   ellipse(830, 420, 30, 30);
     //flame red part
     fill(201, 0, 0);
     stroke(201, 0, 0);
     ellipse(xpos,420,2,6);
     if(xpos==830){
       xpos=833;
     }
     else{
       xpos=830; 
     }
     delay(40);
     //flame orange part
     fill(255, 181, 43);
     stroke(255, 181, 43);
     ellipse(xpos2,420,2,6);
     if(xpos2==830){
       xpos2=833;
     }
     else{
       xpos2=830; 
     }
     delay(40);
   //desk
   fill(230, 212, 168);
   stroke(179, 165, 130);
   rect(380, 100, 150, 310);
   
   
   
   
 
}
