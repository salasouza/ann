# ANN - Artificial Neural Network

### Overview about Perceptron ##
<p align="jutify">
The objective of this project is to study the Artificial Neural Network using that Perceptron.
</p>

<p align="justify">
Perceptron is an algorithm based on biological neuron created by Frank Rosemblatt at 1955. The input values <b>(x, i=1,..., d)</b> with their weights <b>(w, i=1,...,d)</b> are combined with bias values <b>()</b> to result in induced field values. These values are scaled using activation function <b>(sigma or degree function)</b> to values 0 or 1. 
The figure below shows the structure of perceptron. 
</p>

<b>[1] Equation of Neuron:</b>
$$v_0 =\sum_{i=1}^d (x_i*w_i )+b_i$$

The solution to this equation [1], also known as <b>induced field</b>, is processed by activation function as shown in the equation below [2].<br><br/>

<b>[2] Activation Function:</b>
$$y^0 = f(v_0)$$

<p align="justify">
Through a feedforward process, the calibration [3] of new weights and bias can be realized and this results in the training of the network for predicting or learning the solution of the problem. After this calibration, the network is ready to identify solutions to problems such as AND, XOR or any problems that can be linearly separated. 
</p>

<b>[3] Calculate Errors:</b>
$$error_0(t) = y - y_0$$

<b>[4] Calculate Variation of weigths:</b>

$$\Delta(w_j) = error * p * x_i$$

<b>[5] Calculate Variations of Bias:</b>
$$\Delta(b_j) = error*p$$

<b>[6] Calculate Update Weigths:</b>
$$\Delta(w_j)_{t+1} = (w_j + \Delta(w_j))_t$$

<b>[7] Calculate Update Bias:</b>

$$\Delta(b_j)_{t+1} = (b_j + \Delta(b_j))_t$$


#### Structure of Perceptron

![Alt text](image.png)