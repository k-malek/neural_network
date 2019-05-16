void teachw(Network siec,float l_rate,float[][] inputs, float[][] outputs)
{
  int error;
  int m=0;
  while(m<500)
  {
    int n=int(random(inputs.length));
    siec.learning_step(l_rate,inputs[n],outputs[n]);
    error=round(siec.print_cost*100000.0);
    if(error==0) m++;
    else m=0;
  }
}

String full_neural_diagnostics(Network siec,float[][] inputs,float[][]outputs)
{
  String response;
  float full_costs=0.0;
  for(int i=0;i<inputs.length;i++)
  {
    siec.resolve_input(inputs[i]);
    siec.calc_cost(outputs[i]);
    full_costs+=siec.print_cost;
  }
  float avenger=full_costs/inputs.length;
  siec.analysis_cost=avenger;
  response="All costs: "+str(full_costs)+". Average: "+str(avenger)+".";
  return response;
}

String save_n_sound(String zapis,Network siec)
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
  return zapis;
}

void test(Network siec,float[][] inputs)
{
  int n=int(random(inputs.length));
  siec.resolve_input(inputs[n]);  
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
  value=0.5*log((1+value)/(1-value));
  return value;
}
