class Generation
{
  int population;
  int numbre=1;
  Network[] networks;
  
  //Constructors
  
  Generation(int pop, int[] style)
  {
    population=pop;
    networks = new Network[population];
    for(int i=0;i<population;i++)
    {
      networks[i]=new Network(style);
    }
  }
  
  Generation(int pop, int[] style, float[][] wages, float[] biasses)
  {
    population=pop;
    networks = new Network[population];
    for(int i=0;i<population;i++)
    {
      networks[i]=new Network(style,wages,biasses);
    }
  }
  
  void full_teach(int n_gens, int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
  {
   gen_log= createWriter("log.txt");
   for(int i=0;i<n_gens;i++)
   {
     teach(n_lessons,l_rate,inputs,outputs);
     re_generate();
   }
   gen_log.flush();
   gen_log.close(); 
  }
  
  //Learning process for one generation
  
  void teach(int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
  {
    g_log_title(gen_log);
    for(int i=0;i<networks.length;i++)
    {
      networks[i].teach(n_lessons,l_rate,inputs,outputs);
      g_log(gen_log,i+1);
    }
    numbre++;
    Network najlepsiejszy = best();
    gen_log.println("Najlepsiejszy okazał się: "+save_n_sound("",najlepsiejszy));
  }
  
  
  Network best()
  {
    int index_best=1000;
    float minimum=10000000;
    for(int i=0;i<population;i++)
    {
      if(networks[i].analysis_cost<minimum)
      {
        minimum=networks[i].analysis_cost;
        index_best=i;
      }
    }
    return networks[index_best];
  }
  
  void re_generate()
  {
    for(int i=0;i<population;i++)
    {
      Network old = best();
      networks[i]=old.clone_network();
    }
  }
  
  //Generation log methods
  
  void g_log_title(PrintWriter gen_log)
  {
     gen_log.println("===============================================");
     gen_log.println("Generacja nr. "+str(numbre));
     gen_log.println("===============================================");
  }
  void g_log(PrintWriter gen_log,int numer)
  {
    gen_log.println("Siec nr."+str(numer));
    //gen_log.println(save_n_sound("",vaclavs.networks[numer-1]));
    gen_log.println(full_neural_diagnostics(networks[numer-1],inputs,outputs));
    gen_log.println("---------------------------------------");
  }
}
