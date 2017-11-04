# dsap1718_group3_proj
This is the repository for Group 3 Final Project

# Speech Detector of Male to Female using Cepstral Analysis

This project is for identifying the speaker's gender in the recorded audio file. This utilizes Excel VBA and MATLAB 
as the key tools in the development of the system. The main technique emploted in this project is Cepstral Analysis 
which separate the speech into its source and system components without any a priori knowledge about source and / 
or system (http://iitg.vlab.co.in/?sub=59&brch=164&sim=615&cnt=1)

## How to Run

### 1.) Matlab 
The system starts by initially recording a continuous signal using MATLAB for a maximum of five seconds. 
After recording, the signal is them saved to an excel file.
The signal data, using a 8KHz sampling rate, frame size of 20ms, and frame step of 10ms, is framed. 
The result is a signal that is divided into 498 frames, each consisting of 160 samples.

### 2.) Excel GUI

After framing, the each frame undergoes the following process: 

#### a) zero padding
#### b) Fast Fourier Transform
#### c) Power Spectrum
#### d) Log of Power Spectrum
#### e) Inverse Fast Fourier Transform, and 
#### f) High-Time Liftering, 

which are essentially the processes in Cepstral Analysis.

The zero padding is done on every frame to turn each frame into having 256 samples which is a base 2 number. (i.e. log_2 256=8). This is important in the process of Fast Fourier Transform.

Then these signals undergo Fast Fourier Transform, specifically a Radix-2 Decimation in Time Fast Fourier Transform. The output is then squared to get the power spectrum. The resulting square outputs are processed to get the logarithm of each. The log of the power spectrum then is processed in an Inverse Fast Fourier Transform. The results of the IFFT are the cepstral coefficients.
The output cepstral coefficients are applied high-time liftering then mode is applied to the results to identify the gender of the speaker.


### View the Wiki for further instructions
