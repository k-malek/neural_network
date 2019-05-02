class Conn_layer
{
  Conn[] conns;
  Conn_layer(Conn[] zwiazki)
  {
    conns=zwiazki; 
  }
  void show()
  {
    for(int i=0;i<conns.length;i++){conns[i].show();} 
  }
  void send_values()
  {
    for(int i=0;i<conns.length;i++)
    {
      conns[i].send_value(); 
    }
  }
  void send_errors()
  {
    for(int i=0;i<conns.length;i++)
    {
      conns[i].send_error(); 
    }
  }
  void update_wages(float learn_rate)
  {
    for(int i=0;i<conns.length;i++)
    {
      conns[i].update_wage(learn_rate); 
    }
  }
}
