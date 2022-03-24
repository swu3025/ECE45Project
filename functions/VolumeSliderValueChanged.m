 %Samuel's Volume Slider
 % Value changed function: VolumeSlider
function VolumeSliderValueChanged(app, event)
    %https://www.mathworks.com/help/audio/ref/stretchaudio.html
    volume = event.Value;
    speed = app.SpeedSlider.Value;
    window = sqrt(hann(256,'periodic'));
    %making sure volume cannot be less than 1
    if volume > 0
        %making sure the window is in range
        if 1 < window < size(app.yGraph,1)
            %grab the graph with the updated volume and graph it
            resultGraph = stretchAudio(volume*app.yGraph, speed);
            plot(app.UIAxes,resultGraph)
            app.nGraph = resultGraph;
        end
    end

end
