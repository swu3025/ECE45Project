%Samuel's Audio Mixer
% Button pushed function: MixAudioButton
function MixAudioButtonPushed(app, event)
    %mixes two audio signals to create a new signal and graph it
    output = app.yGraph + app.y2Graph;
    hold(app.UIAxes,'off')
    plot(app.UIAxes,output)
end
