% Value changed function: PitchSlider
function PitchSliderValueChanged(app, event)
    %https://www.mathworks.com/help/audio/ref/shiftpitch.html#:~:text=audioOut%20%3D%20shiftPitch(%20audioIn%20%2C%20nsemitones%20)%20shifts%20the%20pitch%20of,specified%20number%20of%20semitones%2C%20nsemitones%20.&text=example-,audioOut%20%3D%20shiftPitch(%20audioIn%20%2C%20nsemitones%20%2C%20Name%2CValue%20),more%20Name%2CValue%20pair%20arguments
    nsemitones = event.Value;
    window = sqrt(hann(size(app.yGraph,1),'periodic'));
    overlapLength = round(0.75*numel(window));
    %the range of nsemitones depends on the window length and the overlap length 
    if (-12*log2(numel(window)-overlapLength)) <= nsemitones
        if nsemitones <= (-12*log2((numel(window)-overlapLength)/numel(window)))
            %making sure the window is in range
            if 1 < window < size(app.yGraph,1)
                %grab the graph with the updated pitch and graph it
                resultGraph = shiftPitch(app.yGraph,nsemitones);
                plot(app.UIAxes, resultGraph)
                app.nGraph = resultGraph;
            end
        end
    end
    
end