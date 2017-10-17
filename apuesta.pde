Boundary Boundary;
Boundary2 Boundary2;

// Basic example of falling rectangles
float x=220+mouseX;
float y=350;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
ArrayList<Box> boxes;
ArrayList<Box2> boxes2;
ArrayList<Box3> boxes3;
ArrayList<Boundary2> boundaries;
ArrayList<Boundary> boundaries2;
ArrayList<Boundary3> boundaries3;
// A reference to our box2d world
Box2DProcessing box2d;

void setup(){
 size (1080,700);
   box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  box2d.setGravity(0,0);
  boxes = new ArrayList<Box>();
  boxes2 = new ArrayList<Box2>();
  boxes3 = new ArrayList<Box3>();
  boundaries = new ArrayList<Boundary2>();
   boundaries2 = new ArrayList<Boundary>();
   boundaries3 = new ArrayList<Boundary3>();
  
  
  
   boundaries2.add(new Boundary(100,50,100,10));
  boundaries2.add(new Boundary(300,50,100,10));
  boundaries2.add(new Boundary(200,350,100,10));
  boundaries2.add(new Boundary(300,350,20,100));
  
  boundaries2.add(new Boundary(600,250,20,100));
  boundaries.add(new Boundary2(1080,350,10,1080));
   boundaries.add(new Boundary2(0,350,10,1080));
    boundaries.add(new Boundary2(540,0,1080,10));
     boundaries.add(new Boundary2(300,400,600,10));
     boundaries.add(new Boundary2(1000,400,600,10));
     
     boundaries3.add(new Boundary3(800,350,20,200));

    boxes.add(new Box());
    boxes2.add(new Box2());
    boxes3.add(new Box3());
  
   

  // Create ArrayLists  
 
   
  
}

void draw() {
  

  // We must always step through time!
  box2d.step();

  // Boxes fall from the top every so often
  
for (Boundary wall: boundaries2) {
    wall.display();
  }


  for (Boundary2 wall: boundaries) {
    wall.display();
  }
  for (Boundary3 wall: boundaries3) {
    wall.display();
  }
 for (Box b: boxes) {
    b.display();
  }
  for (Box2 b: boxes2) {
    b.display();
  }
   for (Box3 b: boxes3) {
    b.display();
  }
  

  // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
 
  }
  
  
    
  
  
 
 
  
  