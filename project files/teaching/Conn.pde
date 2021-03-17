class Conn
{
  Neuron n_in;
  Neuron n_out;
  float wage;
  float error;
  float s_w;
  
  Conn(Neuron n1,Neuron n2)
  {
    n_in=n1;
    n_out=n2;
    wage=random(-1.0,1.0);
  }
  Conn(Neuron n1,Neuron n2,float wag)
  {
    n_in=n1;
    n_out=n2;
    wage=wag;
  }
  void show()
  {
    if(wage>0.3||wage<-0.3)
    {
      if(wage>0.0) stroke(255,0,0);
      else if(wage<0.0) stroke(0,0,255);
      float w_abs=abs(wage);
      s_w=map(w_abs,0.0,10.0,0.0,3.0);
      strokeWeight(s_w);
      line(n_in.pos.x,n_in.pos.y,n_out.pos.x,n_out.pos.y);
    }
  }
  void send_value()
  {
    n_out.value+=n_in.value*wage;  //<>//
  }
  void update_wage(float l_rate)
  {
    wage-=l_rate*n_out.error*n_in.value; //<>//
    if(wage>10.0||wage<-10.0) wage=0.0;
  }
  void send_error()
  {
    n_in.error+=n_out.error*wage*n_in.value*(1-n_in.value);  //<>//
  }
}




Conn[] connect(Layer layer1,Layer layer2)
{
  Conn[] zwiazki;
  zwiazki=new Conn[layer1.neurons.length*layer2.neurons.length];
  for(int i=0;i<layer1.neurons.length;i++)
  {
    for(int j=0;j<layer2.neurons.length;j++)
    {
      int index=j+i*layer2.neurons.length;
      zwiazki[index]=new Conn(layer1.neurons[i],layer2.neurons[j]);
    }  
  }
  return zwiazki;
}

Conn[] connect(Layer layer1,Layer layer2,float[] wages)
{
  Conn[] zwiazki;
  zwiazki=new Conn[layer1.neurons.length*layer2.neurons.length];
  for(int i=0;i<layer1.neurons.length;i++)
  {
    for(int j=0;j<layer2.neurons.length;j++)
    {
      int index=j+i*layer2.neurons.length;
      zwiazki[index]=new Conn(layer1.neurons[i],layer2.neurons[j],wages[index]);
    }  
  }
  return zwiazki;
}
