// Constantes
final int NUM_ROND_MAX = 5;
final int SIZE_ROND = 50;

final color color_black = color( 0, 0, 0 );
final color color_red = color( 255, 0, 0 );
final color color_jaune = color( 245, 230, 10 );
final color color_green = color( 0, 255, 0 );
final color color_fond = color( 100, 100, 100 );

// Classes
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
  
  void display( ) {
    if( this.isVisible) {
      fill( couleur );
      ellipse(x, y, diametre, diametre);
    }
  }
  
  void erase( ) {
    if( this.isVisible) {
      fill( color_fond );
      ellipse(x, y, diametre, diametre);
    }
  }
  
  void move( int step ) {
    this.erase( );
    this.y += ((this.diametre + 10) * step);
  }
}

Rond[] ronds_rouges;
Rond[] ronds_verts;
Rond[] ronds_jaunes;

int num_rouges_displayed = 0;
int num_jaunes_displayed = 0;
int num_verts_displayed = 0;

void setup()
{ 
  size( 600, 600 );
  stroke( 255, 255, 255 );
  strokeWeight( 2 );
  
  ronds_rouges = new Rond[NUM_ROND_MAX];
  for( int i=0; i<NUM_ROND_MAX; i++ ) {
     ronds_rouges[i] = new Rond( 300, 300, SIZE_ROND, color_red );
  }
  
  ronds_jaunes = new Rond[NUM_ROND_MAX];
  for( int i=0; i<NUM_ROND_MAX; i++ ) {
     ronds_jaunes[i] = new Rond( 150, 300, SIZE_ROND, color_jaune );
  }
  
  ronds_verts = new Rond[NUM_ROND_MAX];
  for( int i=0; i<NUM_ROND_MAX; i++ ) {
     ronds_verts[i] = new Rond( 450, 300, SIZE_ROND, color_green );
  }
}

void draw()
{
  background( color_fond );
  
  for( int i=0; i<num_rouges_displayed; i++ ) {
    ronds_rouges[i].display();
  }
  for( int i=0; i<num_jaunes_displayed; i++ ) {
    ronds_jaunes[i].display();
  }
  for( int i=0; i<num_verts_displayed; i++ ) {
    ronds_verts[i].display();
  }
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
    if( num_jaunes_displayed < NUM_ROND_MAX ) {
      if( num_jaunes_displayed >= 1 ) {
        ronds_jaunes[num_jaunes_displayed - 1].move( num_jaunes_displayed );
      }
      ronds_jaunes[num_jaunes_displayed++].setVisible( true );
    }
  }
  else if( key == '2' )
  {
    if( num_verts_displayed < NUM_ROND_MAX ) {
      if( num_verts_displayed >= 1 ) {
        ronds_verts[num_verts_displayed - 1].move( num_verts_displayed );
      }
      ronds_verts[num_verts_displayed++].setVisible( true );
    }
  }
  else if( key == '3' )
  {
    if( num_rouges_displayed < NUM_ROND_MAX ) {
      if( num_rouges_displayed >= 1 ) {
        ronds_rouges[num_rouges_displayed - 1].move( num_rouges_displayed );
      }
      ronds_rouges[num_rouges_displayed++].setVisible( true );
    }
  }
}