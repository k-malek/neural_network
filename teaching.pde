float kolorR;
float kolorG;
float kolorB;

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
