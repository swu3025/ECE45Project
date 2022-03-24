%Samuel's Speed Slider
% Value changed function: SpeedSlider
function SpeedSliderValueChanged(app, event)
    %https://www.mathworks.com/help/audio/ref/stretchaudio.html
    speed = event.Value;
    win = sqrt(hann(256,'periodic'));
    ovrlp = round(0.75*numel(win));;
    S = stft(app.yGraph,'Window',win,'OverlapLength',ovrlp,'Centered',false);
    %making sure speed is bigger than the minimum achievable speedup
    if speed > 64/256
        %grab the graph with the updated speed and graph it
        resultGraph = stretchAudio(S,speed,'Window',win,'OverlapLength',ovrlp);
        plot(app.UIAxes,resultGraph)
        app.nGraph = resultGraph;
    end
end
