class Layer
{
  Neuron[] neurons;
  String level;
  float bias;
  int pos_ex;
  
  Layer(int amount, int pos_x, String lev)
  {
    neurons = new Neuron[amount];
    level=lev;
    bias=random(0.0,1.0);
    pos_ex=pos_x;
    int n=amount-1;
    for(int i=0;i<amount;i++)
    {
      int pos_y=int(sizer.y)/2-25*n+50*i;
      neurons[i]=new Neuron(pos_x,pos_y,level); 
    }
  }
  Layer(int amount, int pos_x, String lev,float b)
  {
    neurons = new Neuron[amount];
    level=lev;
    bias=b;
    pos_ex=pos_x;
    int n=amount-1;
    for(int i=0;i<amount;i++)
    {
      int pos_y=int(sizer.y)/2-25*n+50*i;
      neurons[i]=new Neuron(pos_x,pos_y,level); 
    }
  }
  void show()
  {
    for(int i=0;i<neurons.length;i++)
    {
      neurons[i].show(); 
    }
  }
  void show_bias()
  {
    int recept=round(bias*100.0);
    float show_value=float(recept)/100.0;
    textSize(14);
    fill(0);
    String to_show="b: "+str(show_value);
    text(to_show,neurons[0].pos.x-20,neurons[0].pos.y-30); 
  }
  void add_bias()
  {
    for(int i=0;i<neurons.length;i++)
    {
      neurons[i].value+=bias;
    }
  }
  void tan_h()
  {
    for(int i=0;i<neurons.length;i++)
    {
       neurons[i].tan_h();
    }
  }
  void clear_values()
  {
    for(int i=0;i<neurons.length;i++)
    {
       neurons[i].clear_value();
    }
  }
  void clear_errors()
  {
    for(int i=0;i<neurons.length;i++)
    {
       neurons[i].clear_error();
    }
  }
  void update_bias(float l_rate)
  {
    float full_bias_error=0.0;
    for(int i=0;i<neurons.length;i++)
    {
       full_bias_error+=neurons[i].error;
    }
    bias-=l_rate*full_bias_error;
    if(bias>10.0||bias<-10.0) bias=0.0;
  }
}
