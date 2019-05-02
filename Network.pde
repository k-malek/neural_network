float print_cost;

class Network
{
  Layer[] layers;
  Conn_layer[] conn_layers;
  float full_cost;
  Network(int[] neurons_per_layer)
  {
    layers= new Layer[neurons_per_layer.length];
    conn_layers=new Conn_layer[neurons_per_layer.length-1];
    for(int i=0;i<neurons_per_layer.length;i++)
    {
      int n=neurons_per_layer.length-1;
      int pos_x=width/2-60*n+120*i;
      String lv;
      if(i==0) lv="i";
      else if(i==neurons_per_layer.length-1) lv="o";
      else lv="h";
      layers[i]=new Layer(neurons_per_layer[i],pos_x,lv);
    }
    for(int i=0;i<neurons_per_layer.length-1;i++)
    {
      conn_layers[i]=new Conn_layer(connect(layers[i],layers[i+1]));
    }
  }
  Network(int[] neurons_per_layer,float[][]wages,float[] biasses)
  {
    layers= new Layer[neurons_per_layer.length];
    conn_layers=new Conn_layer[neurons_per_layer.length-1];
    for(int i=0;i<neurons_per_layer.length;i++)
    {
      int n=neurons_per_layer.length-1;
      int pos_x=width/2-60*n+120*i;
      String lv;
      if(i==0) lv="i";
      else if(i==neurons_per_layer.length-1) lv="o";
      else lv="h";
      layers[i]=new Layer(neurons_per_layer[i],pos_x,lv,biasses[i]);
    }
    for(int i=0;i<neurons_per_layer.length-1;i++)
    {
      conn_layers[i]=new Conn_layer(connect(layers[i],layers[i+1],wages[i]));
    }
  }
  void show()
  {
     for(int i=0;i<conn_layers.length;i++) conn_layers[i].show();
     for(int i=0;i<layers.length;i++) layers[i].show();
  }
  void show_biasses()
  {
    for(int i=1;i<layers.length;i++)
    {
      layers[i].show_bias();
    }
  }
  void show_cost()
  {
    int show_value=round(full_cost*1000000.0);
    textSize(24);
    fill(0);
    String result="error = "+str(show_value);
    text(result,width-250,height-100); 
  }
  void insert_input(float[] input)
  {
   for(int i=0;i<layers[0].neurons.length;i++)
   {
    layers[0].neurons[i].value=input[i]; 
   }
  }
  void clear_values()
  {
    for(int i=0;i<layers.length;i++)
    {
      layers[i].clear_values();
    }
  }
  void clear_errors()
  {
    for(int i=0;i<layers.length;i++)
    {
      layers[i].clear_errors();
    }
  }
  void resolve_input(float[] input)
  {
    clear_values(); //<>//
    insert_input(input);
    for(int i=0;i<conn_layers.length;i++)
    {
      conn_layers[i].send_values();
      layers[i+1].add_bias();
      layers[i+1].tan_h();
    }
  }
  void calc_cost(float[] expected)
  {
     full_cost=0; //<>//
     for(int i=0;i<layers[layers.length-1].neurons.length;i++)
     {
       layers[layers.length-1].neurons[i].calc_cost(expected[i]);
       full_cost+=layers[layers.length-1].neurons[i].cost;
     }
     print_cost=full_cost;
     show_cost();
  }
  void calc_out_errors()
  {
     full_cost=0;
     for(int i=0;i<layers[layers.length-1].neurons.length;i++)
     {
       layers[layers.length-1].neurons[i].calc_error();
     }
  }
  void update_biasses(float l_rate)
  {
    for(int i=0;i<layers.length;i++) //<>//
    {
      layers[i].update_bias(l_rate); 
    }
  }
  void backprop(float l_rate,float[] expected)
  {
    clear_errors(); //<>//
    calc_cost(expected);
    calc_out_errors();
    for(int i=conn_layers.length-1;i>=0;i--)
    {
      conn_layers[i].send_errors();
      conn_layers[i].update_wages(l_rate);
    }
    update_biasses(l_rate);
  }
  void learning_step(float l_rate,float[] input,float[] expected)
  {
    resolve_input(input);
    backprop(l_rate,expected);
  }
}
