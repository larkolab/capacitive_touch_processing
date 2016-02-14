int x_pos;
int y_pos;
int move_step;

void setup()
{
  size( 600, 600 );
  fill( 255, 0, 0 );
  stroke( 255, 255, 255 );
  strokeWeight( 10 );
  
  x_pos = 300;
  y_pos = 300;
  move_step = 10;
}

void draw()
{
  background( 100, 100, 100 );
  ellipse( x_pos, y_pos, 100, 100 );
}

void keyPressed()
{
  if( key == CODED )
  {
    if( keyCode == UP )
    {
      y_pos -= move_step;
    }
    else if ( keyCode == DOWN )
    {
      y_pos += move_step;
    } 
    else if ( keyCode == LEFT )
    {
      x_pos -= move_step;
    } 
    else if ( keyCode == RIGHT )
    {
      x_pos += move_step;
    }
  }
}