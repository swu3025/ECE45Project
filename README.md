# ECE 45 Project

# Contributors:
# Samuel Wu: I created and designed the GUI and adjusted all of the functions to run on the GUI. I authored “VolumeSliderValueChanged.m”, “SpeedSliderValueChanged.m”, “PitchSliderValueChanged.m”, “MixAudioButtonPushed.m”, “ReverttoOriginalWaveButtonPushed.m”, “ChooseAudioDropDownValueChanged.m”, “SelectAudiotoMixDropDownValueChanged.m”, and “startupFcn.m”.

Gordon Ling: I authored “AddEchoButtonPushed.m” and “RemoveEchoButtonPushed.m”.

William Zhang: I authored “sinewave.m”, “cosinewave.m”, and “squarewave.m.” I also tested the functionality of each of these functions and edited the code to better suit the GUI. The code for 

# Notes:
Audio toolbox and Signal Processing Toolbox are required to run the program.
The provided .m files are the functions that are inside the Code View of the App Designer. They will not function properly when run individually. The code is only for viewers to see how the features work, along with how it is altered to connect to the GUI.

# Potential Applications
Our synthesizer is able to generate new waveforms and subject them to alteration in pitch, frequency, and amplitude. One of the potential applications of our synthesizer is music as the primary use of the synthesizer is generating and altering waveforms. 

# Description of Synthesizer Controls
Choose Audio: A drop-down menu for the various waveforms. The various waveforms include the fundamental cosine, sine, and square waveforms.

Volume: Slider that adjusts the volume of the waveforms. The minimum volume is 0 and the maximum is 5. 

Pitch: Slider that adjusts the pitch of the waveforms. The minimum pitch is -96 and the maximum is 24.

Speed: Slider that adjusts the speed of the waveforms. The minimum speed is 0 and the maximum is 5. 

Visual Representation: Displays the waveforms graphically and displays the alterations in the waveforms. The specified wave frequency and nyquist rate are specified.

Add echo: Adds an echo to the current waveform by adding an echoing waveform to the current waveform to produce an echoing effect.

Remove echo: Removes echo of the current waveform by filtering out echoing waveform.

Select Audio to Mix: Dropdown menu for waveforms to mix with current waveform. The options of waveforms include sine, cosine, and square waveforms.

Mix Audio: Mixes the waveform that was selected in “Select Audio to Mix” with the current waveform. 

Revert to Original Wave: Button to change the signal on the graph back to its original wave listed in drop-down menu. 

# Applications of Class Concepts in Synthesizer
In the process of designing echo cancellation, filtering was used to remove the echo in our waveform that includes an echo. 
In the process of designing echo adder, waveform addition was used to add an echo to our current waveform to produce an echo effect.
The concept of nyquist rate was used throughout our echo cancellation, echo adder, waveform options, and waveform option to mix.

# Citations
Generate single cycle of a sine wave at a particular frequency - 
Sine Wave Plot
Square Wave
Echo Cancellation
Shift Audio Pitch 
Stretch Audio




