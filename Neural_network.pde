Network wlodek;
float[][] inputs=new float[][]{
//zielony
{map_color(0.0),map_color(255.0),map_color(0.0)},  
{map_color(57.0),map_color(255.0),map_color(20.0)}, //neon  
{map_color(152.0),map_color(251.0),map_color(152.0)}, //miętowy
{map_color(199.0),map_color(234.0),map_color(152.0)}, //limonkowy
{map_color(5.0),map_color(159.0),map_color(29.0)},  //ciemnozielony
{map_color(66.0),map_color(203.0),map_color(17.0)},  
//czerwony
{map_color(255.0),map_color(0.0),map_color(0.0)},  
{map_color(255.0),map_color(36.0),map_color(0.0)}, //szkarłatny  
{map_color(184.0),map_color(15.0),map_color(10.0)}, //karmazynowy
{map_color(194.0),map_color(24.0),map_color(7.0)}, //chilli
//niebieski
{map_color(0.0),map_color(0.0),map_color(255.0)},  
{map_color(0.0),map_color(0.0),map_color(128.0)}, //granatowy  
{map_color(126.0),map_color(249.0),map_color(255.0)}, //elektryczny
{map_color(149.0),map_color(200.0),map_color(216.0)}, //niebo
{map_color(34.0),map_color(40.0),map_color(141.0)}, //ciemnoniebieski
{map_color(44.0),map_color(98.0),map_color(235.0)},
{map_color(19.0),map_color(156.0),map_color(252.0)},
//żółty
{map_color(255.0),map_color(255.0),map_color(0.0)},  
{map_color(239.0),map_color(253.0),map_color(95.0)}, //cytrynowy  
{map_color(252.0),map_color(226.0),map_color(5.0)}, //pszczeli
{map_color(250.0),map_color(222.0),map_color(76.0)}, //kanarkowy
//różowy
{map_color(255.0),map_color(0.0),map_color(255.0)},  
{map_color(251.0),map_color(174.0),map_color(210.0)}, //lawendowy
{map_color(255.0),map_color(111.0),map_color(255.0)}, //ultra
{map_color(255.0),map_color(0.0),map_color(144.0)}, //magenta
{map_color(238.0),map_color(77.0),map_color(153.0)}, //pudrowy
{map_color(227.0),map_color(147.0),map_color(248.0)}, //jasnoróżowy
//pomarańczowy
{map_color(255.0),map_color(102.0),map_color(0.0)},  
{map_color(239.0),map_color(114.0),map_color(21.0)}, //marchewkowy
{map_color(255.0),map_color(116.0),map_color(23.0)}, //dyniowy
//brązowy
{map_color(102.0),map_color(51.0),map_color(0.0)},  
{map_color(129.0),map_color(63.0),map_color(11.0)}, //glina
{map_color(136.0),map_color(48.0),map_color(0.0)}, //ciemny bursztyn
{map_color(150.0),map_color(64.0),map_color(0.0)}, //spalona pomarańcza
{map_color(51.0),map_color(12.0),map_color(4.0)}, //b. ciemny brąz
{map_color(186.0),map_color(153.0),map_color(117.0)}, //beżowy
//fioletowy
{map_color(170.0),map_color(30.0),map_color(140.0)},  
{map_color(142.0),map_color(69.0),map_color(133.0)}, //śliwkowy
{map_color(141.0),map_color(39.0),map_color(136.0)}, //śliwkowy2
{map_color(195.0),map_color(100.0),map_color(197.0)}, //fuksja
{map_color(191.0),map_color(62.0),map_color(255.0)}, //ciemna orchidea
{map_color(199.0),map_color(168.0),map_color(241.0)}, //pudrowy fiolet
//biały
{map_color(255.0),map_color(255.0),map_color(255.0)},  
{map_color(252.0),map_color(252.0),map_color(252.0)}, 
{map_color(251.0),map_color(251.0),map_color(251.0)},
{map_color(254.0),map_color(254.0),map_color(254.0)},
//szary
{map_color(30.0),map_color(30.0),map_color(30.0)},  
{map_color(100.0),map_color(100.0),map_color(100.0)}, 
{map_color(180.0),map_color(180.0),map_color(180.0)},
{map_color(230.0),map_color(230.0),map_color(230.0)},
//czarny
{map_color(0.0),map_color(0.0),map_color(0.0)},  
{map_color(1.0),map_color(1.0),map_color(1.0)}, 
{map_color(10.0),map_color(10.0),map_color(10.0)},
{map_color(5.0),map_color(5.0),map_color(5.0)},
//mixy
{map_color(161.0),map_color(145.0),map_color(46.0)},  //sraczkowaty
{map_color(122.0),map_color(167.0),map_color(51.0)},   //dziwno-oliwkowy
{map_color(163.0),map_color(217.0),map_color(2.0)}   //zielono-zółty
};
float[][] outputs=new float[][]{
//zielony
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //neon
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //miętowy
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //limonkowy
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //ciemnozielony
{tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
//czerwony
{tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //szkarłatny
{tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //karmazynowy
{tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //chilli
//niebieski
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //granatowy
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //elektryczny
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //niebo
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //ciemnoniebieski
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
//żółty
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //cytrynowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //pszczeli
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //kanarkowy
//różowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //lawendowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //ultra
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //magenta
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //pudrowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //jasnoróżowy
//pomarańczowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //marchewkowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //dyniowy
//brązowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //glina
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //ciemny bursztyn
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //spalona pomarańcza
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //b. ciemny brąz
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //beżowy
//fioletowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //śliwkowy
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //śliwkowy2
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //fuksja
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //ciemna orchidea
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0),tanh(0.0)},   //pudrowy fiolet
//biały
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0),tanh(0.0)},
//szary
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0),tanh(0.0)},
//czarny
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0)},
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0)},  
{tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(1.0)},
//mixy
{tanh(0.1),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.9),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //sraczkowaty
{tanh(0.95),tanh(0.0),tanh(0.0),tanh(0.05),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)},  //dziwno-oliwkowy
{tanh(0.65),tanh(0.0),tanh(0.0),tanh(0.35),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0),tanh(0.0)}  //zielono-żółty
};
int m=0;

String tekst;
void setup()
{
  size(1000,600);
  wlodek=new Network(new int[]{3,8,11},new float[][]{{4.2721896,-4.9433756,1.8968391,0.37722737,-3.8459544,-5.8116193,7.287989,2.793579,-3.394191,-6.4469357,0.70924157,9.007678,8.172705,1.234071,-4.2827225,0.26601756,-6.2139554,6.5703683,6.6915956,-3.0094113,-4.431363,-2.944869,0.34293902,6.3160963},{0.119589046,0.20830747,0.021745482,-0.116010934,-0.036590215,0.26690933,-0.14185552,-0.07739898,-0.09921923,-0.04163639,-0.08940883,-0.09861126,-0.08811387,0.27603132,0.12995188,-0.0481997,0.024890443,0.21013315,-0.13467982,0.015576302,-0.11668944,-0.08415522,0.4427948,-0.25162402,-0.12464048,-0.37399453,0.3118899,0.50872284,-0.4990917,0.31113926,-0.04116841,-0.035888378,-0.21381858,-0.0040110312,-0.08458609,0.052568667,-0.010483993,-0.09941577,0.06628491,0.14664446,-0.15062013,0.104162954,0.033826474,-0.052759495,0.20827208,0.033868432,-0.08606466,0.24981542,0.0012895036,0.010393388,-0.064753786,0.0012618395,-0.10167915,-0.10757743,-0.055492595,-0.19764003,-0.044743918,-0.17322844,-0.13749073,0.07529659,-0.21419875,-0.14439248,0.18279652,0.15351914,0.2342685,0.09058197,-0.10609419,-0.061094664,-0.21664476,0.15086778,0.090170726,0.018276881,0.18085985,0.078939945,0.056531027,-0.09081168,-0.066121615,-0.42477202,0.34182453,0.28957263,0.32484427,-0.2579466,-0.5021341,0.17579068,-0.20004375,0.026450347,0.09948538,0.0912204}},new float[]{0.00,-1.6486971,0.068993956});
  teach(wlodek,200000,0.001,inputs, outputs);
}
void draw()
{
  background(255);
  wlodek.show();
  wlodek.show_biasses();
  show_etykiety(wlodek);
  fill(kolorR,kolorG,kolorB);
  rect(100,100,100,100);
  //int n=int(random(inputs.length));
  //wlodek.learning_step(0.01,inputs[n],outputs[n]);
}

void mouseClicked()
{
  save_n_sound("Kolory: ",wlodek);
  kolorR=random(0,255);
  kolorG=random(0,255);
  kolorB=random(0,255);
  wlodek.resolve_input(new float[]{map_color(kolorR),map_color(kolorG),map_color(kolorB)});
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


float map_color(float value)
{
  float kolor=map(value,0.0,255.0,0.0,1.0);
  return kolor;
}
float demap_color(float kolor)
{
  float value=map(kolor,0.0,1.0,0.0,255.0);
  return value;
}

void show_etykiety(Network siec)
{
  for(int i=0;i<siec.layers[siec.layers.length-1].neurons.length;i++)
  {
    String kolor="";
    if(i==0) kolor="zielony";
    else if(i==1) kolor="czerwony";
    else if(i==2) kolor="niebieski";
    else if(i==3) kolor="żółty";
    else if(i==4) kolor="różowy";
    else if(i==5) kolor="pomarańczowy";
    else if(i==6) kolor="brązowy";
    else if(i==7) kolor="fioletowy";
    else if(i==8) kolor="biały";
    else if(i==9) kolor="szary";
    else if(i==10) kolor="czarny";
    float pewnosc=siec.layers[siec.layers.length-1].neurons[i].value;
    if(pewnosc>0.15)
    {
      pewnosc=map(pewnosc,0.15,1.0,0.0,500.0);
      fill(pewnosc,0,0);
      text(kolor,siec.layers[siec.layers.length-1].neurons[i].pos.x+150,siec.layers[siec.layers.length-1].neurons[i].pos.y+7.5);
    }
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
