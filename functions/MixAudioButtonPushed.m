% Button pushed function: MixAudioButton
function MixAudioButtonPushed(app, event)
    %mixes two audio signals to create a new signal and graph it
    if size(app.yGraph) == size(app.y2Graph) 
        output = app.yGraph + app.y2Graph;
        hold(app.UIAxes,'off')
        plot(app.UIAxes,output)
    end
end
