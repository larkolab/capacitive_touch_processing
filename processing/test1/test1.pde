color color_black = color( 0, 0, 0 );
color color_red = color( 255, 0, 0 );
color color_jaune = color( 245, 230, 10 );
color color_green = color( 0, 255, 0 );

class Rond {
  int x;
  int y;
  int diametre;
  color couleur;
  boolean isVisible;
  
  Rond( int x, int y, int diametre, color couleur ) {
    this.x = x;
    this.y = y;
    this.diametre = diametre;
    this.couleur = couleur;
    this.isVisible = false;
  }
  
  void setVisible( boolean visible ) {
    this.isVisible = visible;
  }
  
  void display() {
    if( this.isVisible) {
      fill( couleur );
      ellipse(x, y, diametre, diametre);
    }
  }
}

Rond[] ronds_rouges;
Rond[] ronds_verts;
Rond[] ronds_jaunes;

void setup()
{ 
  size( 600, 600 );
  stroke( 255, 255, 255 );
  strokeWeight( 5 );
  
  ronds_rouges = new Rond[5];
  for( int i=0; i<5; i++ ) {
     ronds_rouges[i] = new Rond( 300, 300, 100, color_red );
  }
  
  ronds_jaunes = new Rond[5];
  for( int i=0; i<5; i++ ) {
     ronds_jaunes[i] = new Rond( 150, 300, 100, color_jaune );
  }
  
  ronds_verts = new Rond[5];
  for( int i=0; i<5; i++ ) {
     ronds_verts[i] = new Rond( 450, 300, 100, color_green );
  }
}

void draw()
{
  background( 100, 100, 100 );
  
  ronds_rouges[0].display();
  ronds_jaunes[0].display();
  ronds_verts[0].display();
}

void keyPressed()
{
  if( key == CODED )
  {
    if( keyCode == UP )
    {
    }
    else if ( keyCode == DOWN )
    {
    } 
    else if ( keyCode == LEFT )
    {
    } 
    else if ( keyCode == RIGHT )
    {
    }
  }
  else if( key == '1' )
  {
    ronds_jaunes[0].setVisible( true );
  }
  else if( key == '2' )
  {
    ronds_verts[0].setVisible( true );
  }
  else if( key == '3' )
  {
    ronds_rouges[0].setVisible( true );
  }
}