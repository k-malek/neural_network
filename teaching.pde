void teach(Network siec,int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
{
  for(int i=0;i<n_lessons;i++)
  {
    int n=int(random(inputs.length));
    siec.learning_step(l_rate,inputs[n],outputs[n]);
    kolorR=demap_color(inputs[n][0]);
    kolorG=demap_color(inputs[n][1]);
    kolorB=demap_color(inputs[n][2]);
  }
}
void teachw(Network siec,float l_rate,float[][] inputs, float[][] outputs)
{
  int error;
  int m=0;
  while(m<500)
  {
    int n=int(random(inputs.length));
    siec.learning_step(l_rate,inputs[n],outputs[n]);
    error=round(print_cost*100000.0);
    if(error==0) m++;
    else m=0;
  }
}

float tanh(float value)
{
  float e=2.718281828459;
  float edov=pow(e,value);
  float edo_v=pow(e,-value);
  value=(edov-edo_v)/(edov+edo_v);
  return value;
}
float atanh(float value)
{
  float e=2.718281828459;
  value=0.5*log((1+value)/(1-value));
  return value;
}

void save_n_sound(String zapis,Network siec)
{
  zapis+="new Network(new int[]{";
  for(int i=0;i<siec.layers.length;i++)
  {
   int n=siec.layers[i].neurons.length;
   zapis+=str(n);
   if(i!=siec.layers.length-1) zapis+=",";
  }
  zapis+="},new float[][]{";
  for(int i=0;i<siec.conn_layers.length;i++)
  {
    zapis+="{";
    for(int j=0;j<siec.conn_layers[i].conns.length;j++)
    {
     float n=siec.conn_layers[i].conns[j].wage;
     zapis+=str(n);
     if(j!=siec.conn_layers[i].conns.length-1) zapis+=",";
    }
    zapis+="}";
    if(i!=siec.conn_layers.length-1) zapis+=",";
  }
  zapis+="},new float[]{0.00";
  for(int i=0;i<siec.layers.length;i++)
  {
   float n=siec.layers[i].bias;
   if(i!=0)zapis+=str(n);
   if(i!=siec.layers.length-1) zapis+=",";
  }
  zapis+="});";
  println (zapis);
}
