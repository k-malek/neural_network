# Neural network

Created with Java it is my first neural network project. Files has been prepared with marvellous Processing 3 software sketchbook (make sure to check up processing.org!).

Unfortunatelly program isn't 100% "newbie friendly", which means that using it requires at least basic knowledge of both Java and how neural networks actually work. Knowledge of Processing refferences might be also helpful.

# Files content / usage of program

Files contain classes for neurons, layers of neurons, connections, layers of connections, and neural networks themselves. There are two types of neural network class constructors:

- Network(int[] neurons_per_layer)
- Network(int[] neurons_per_layer,float[][]wages,float[] biasses)

first one creates Network object with random weight for each connection created and random biasses for layers. It only requires set of ints - desired number of neurons for every layer, ex. new Network(new int[]{2,4,3}) creates network with three layers: 2 neurons in input layer, 4 in hidden, 3 in output. Of course program lets you set weights of connections and biasses for network for yourself with second type of constructor.

Downloadable files are ready-to-work for creation of new neural network of your own desire! "Neural_network" is the file you want to edit for your purposes.

# Generations

The latest feature of neural_network project contains generic algorythms. Now you can create population of neural networks nad let them all be taught simultaneously! Program chooses the best performer (choice based on total error value for every network) and makes new generation out of best-network copies. Of course I'm planning to add actual breeding and mutation algoritms in the project, but I was very satisfied with results of simple "copying-of-best algorithm".

# Pre-prepared neural networks

Txt files contains two of children of my program. Wlodek is network prepared to recognise colors with RGB values(mapped into 0 to 1 values). Video file contains result of wlodek's work. Vaclav is taught in more simple task - he recognizes if two input numers from 1 to 5 (again, mapped into 0 to 1 values) are same, or no.

# Learning process

For activation function I've chosen hyperbolic tangent. I provided four options of learning:

- my_network.teach(int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
- my_network.teachw(float l_rate,float[][] inputs, float[][] outputs)
- my_generation.teach(int n_generations, int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
- void setup()
{
  size(800,600);
  my_network=new Network(new int[]{2,4,3});
}
void draw()
{
  background(255);
  my_network.show();
  my_network.show_biasses();
  int n=int(random(inputs.length));
  my_network.learning_step(0.01,inputs[n],outputs[n]);
}

Oof... done :) So, option one and option two are simillar, teachw is learning process which works UNTILL program thinks, that it learned desired task. Teach function is more classic - lets you choose number of lessons for your network.

Of course you can teach whole generations with only one method. To do so, you may want to use the third option. Just type how many generations you want to teach and wait for RESULT LOG, which is auto-created during the process. It contains information about performance of every single network. I found it extremely helpful during my own work - rapid raises in average error values or "slow starts" gives you enough data, to rethink value of learning rate, size of network or number of lessons or population... There is still much to discover! 

Fourth option lets you watch learning process live (yeah, fun! :D). It shows error function result x100 000 in lower-right corner of canvas, so you actually know if your network learns, or no (anyways, be patient with it :) ). For many purposes error lower than 500 should be totally enough.

# Save your network!

Function save_n_sound(Network) returns String constructor with weights and biasses for chosen network. You can print, copy and paste it into program and restore your network. It's helpful with long-range learning processes or when you wish to create another network and store effect of your last project somewhere else on the txt file.
