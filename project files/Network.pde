class Network
{
  Layer[] layers;
  Conn_layer[] conn_layers;
  float full_cost;
  float print_cost;
  float analysis_cost;
  //constructors
  Network(int[] neurons_per_layer)
  {
    layers= new Layer[neurons_per_layer.length];
    conn_layers=new Conn_layer[neurons_per_layer.length-1];
    for(int i=0;i<neurons_per_layer.length;i++)
    {
      int n=neurons_per_layer.length-1;
      int pos_x=int(sizer.x)/2-60*n+120*i;
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
      int pos_x=int(sizer.x)/2-60*n+120*i;
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
  //visualisations
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
    int show_value=round(print_cost);
    textSize(24);
    fill(0);
    String result="error = "+str(show_value);
    text(result,width-250,height-100); 
  }
  
  //cleanse neuron values
  
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
  
  //preparing teach method
  
  void insert_input(float[] input)
  {
   for(int i=0;i<layers[0].neurons.length;i++)
   {
    layers[0].neurons[i].value=input[i]; 
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
     print_cost=full_cost*1000000.0;
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
  
  //teach method
  
  void learning_step(float l_rate,float[] input,float[] expected)
  {
    resolve_input(input);
    backprop(l_rate,expected);
  }
  
  void teach(int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
  {
    for(int i=0;i<n_lessons;i++)
    {
      int n=int(random(inputs.length));
      learning_step(l_rate,inputs[n],outputs[n]);
    }
  }
  
  
  
  Network clone_network()
  {
    Network nova;
    int[] neurony= new int[layers.length];
    float[] bjasy = new float[layers.length];
    for(int i=0;i<layers.length;i++)
    {
      neurony[i]=layers[i].neurons.length;
      bjasy[i]=layers[i].bias;
    }
    float[][] wsz_wagi = new float[conn_layers.length][];
    for(int i=0;i<conn_layers.length;i++)
    {
      float[] wagi= new float[conn_layers[i].conns.length];
      for(int j=0;j<conn_layers[i].conns.length;j++)
      {
        wagi[j]=conn_layers[i].conns[j].wage;
      }
      wsz_wagi[i]=wagi;
    }
    nova= new Network(neurony,wsz_wagi,bjasy);
    return nova;
  }
}
