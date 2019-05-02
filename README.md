# Neural network

Created with Java it is my first neural network project. Files has been prepared with marvellous Processing 3 software sketchbook (make sure to check up processing.org!).

Unfortunatelly program isn't 100% "newbie friendly", which means that using it requires at least basic knowledge of both Java and how neural networks actually work. Knowledge of Processing refferences might be also helpful.

# Files content / usage of program

Files contain classes for neurons, layers of neurons, connections, layers of connections, and neural networks themselves. There are two types of neural network class constructors:

- Network(int[] neurons_per_layer)
- Network(int[] neurons_per_layer,float[][]wages,float[] biasses)

first one creates Network object with random weight for each connection created and random biasses for layers. It only requires set of ints - desired number of neurons for every layer, ex. new Network(new int[]{2,4,3}) creates network with three layers: 2 neurons in input layer, 4 in hidden, 3 in output. Of course program lets you set weights of connections and biasses for network for yourself with second type of constructor.

Downloadable files aren't carte blanche! They are ready-to-go with pre-prepared (already taught) neural network for color recognizing task. Wlodek isn't perfect, but you can let him learn more :p. Otherwise, feel free to wipe clean Neural_network file (which is main file) and create new neural network on your own!

Video file contains result of wlodek's work.

# Learning process

For activation function I've chosen hyperbolic tangent. I provided program with three options of learning:

- teach(Network siec,int n_lessons,float l_rate,float[][] inputs, float[][] outputs)
- teachw(Network siec,float l_rate,float[][] inputs, float[][] outputs)
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

Oof... done :) So, option one and optiontwo are simillar, teachw is learning process UNTILL program thinks, that it learned desired task. Teach function is more classic - lets you choose number of lessons for your network.

Third option lets you watch learning process live (yeah, fun! :D). It shows error function result x100000 in lower-right corner of canvas, so you actually know if your network learns, or no (anyways be patient with it :) ). For many purposes error lower than 500 should be totally enough.

# Save your network!

Function save_n_sound(Network) prints constructor with weights and biasses for chosen network. You can copy and paste it into program and restore your network. It's helpful with long-range learning processes or when you wish to create another network and store effect of your last project somewhere on the txt file.

By default save_n_sound function is bound to left mouse button click.
