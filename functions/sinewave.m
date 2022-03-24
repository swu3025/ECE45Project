function sine = sinewave(app, graph, holdOn)
    %https://www.mathworks.com/matlabcentral/answers/309388-generate-single-cycle-of-a-sine-wave-at-a-particular-frequency
    %https://www.mathworks.com/matlabcentral/answers/36428-sine-wave-plot
    %william zhang sin wave generator            
    % F is sine wave frequency. Could be user determined. 
    % fs is sampling frequency. Could be user determined.
    % for the purposes of our synthesizer, we 
    % give a premade set of sinusoidal waves to use.
    app.VolumeSlider.Value = 1;
    app.SpeedSlider.Value = 1;
    app.PitchSlider.Value = 0;
    F = 10; 
    fs = 1000; 
    phase = 0;
    dt = 1/fs; % sampling interval
    length = 2; % length of wave is in seconds 
    time = (0:dt:length)'; % time variable of sine wave given by sampling

    %checking if we want to graph the original wave or the wave for the
    %mixer
    if(strcmpi(graph, 'yGraph'))
        app.yGraph = sin(2*pi*F*time + phase);
        app.nGraph = app.yGraph;
    else
        app.y2Graph = sin(2*pi*F*time + phase);
    end
    
    %check if we want to have two signals on the graph
    if holdOn
        hold(app.UIAxes,'on')
        plot(app.UIAxes,time, app.y2Graph);
    else
        plot(app.UIAxes,time, app.yGraph);
    end
    xlabel(app.UIAxes,'Time');
    ylabel(app.UIAxes,'Magnitude')
    title(app.UIAxes,'Sine wave of F=10 and fs = 1000');
    
    
end