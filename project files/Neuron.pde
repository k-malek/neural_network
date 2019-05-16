class Neuron
{
  PVector pos;
  String level;
  float value;
  float cost=0.0;
  float error=0.0;
  float exp=0.0;
  
  Neuron(int x, int y, String lev)
  {
    level=lev;
    value=0.0;
    pos = new PVector(x,y);
  }
  void show()
  {
    fill(255);
    stroke(0);
    strokeWeight(1);
    ellipse(pos.x,pos.y,25,25);
    if(level=="o")
    {
      float recept= value;
      int recept2=round(recept*100.0);
      float show_value=float(recept2)/100.0;
      textSize(24);
      fill(0);
      text(str(show_value),pos.x+50,pos.y+8); 
    }
    else if(level=="i")
    {
      int recept=round(value*100.0);
      float show_value=float(recept)/100.0;
      textSize(24);
      fill(0);
      text(str(show_value),pos.x-90,pos.y+8); 
    }
  }
  void clear_value()
  {
    value=0; 
  }
  void clear_error()
  {
    error=0; 
  }
  void tan_h()
  {
    value=tanh(value); 
  }
  void calc_cost(float expected)
  {
    exp=expected;
    cost=(value-exp)*(value-exp);
  }
  void calc_error()
  {
    float dCdsigm=2*(value-exp); //<>//
    float dsigmdtanh=1-value*value;
    error=dCdsigm*dsigmdtanh;
  }
}
