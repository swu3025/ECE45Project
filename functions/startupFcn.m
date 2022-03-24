%Samuel's start up function for GUI
% Code that executes after component creation
function startupFcn(app)
    %plotting the cosine wave and setting the intial values of
    %certain features
    cosinewave(app,'yGraph', false)
    window = sqrt(hann(1024,'periodic'));
    overlapLength = round(0.75*numel(window));
    lowerBound = -12*log2(numel(window)-overlapLength);
    upperBound = -12*log2((numel(window)-overlapLength)/numel(window));
    app.PitchSlider.Limits = [lowerBound upperBound];
    app.SpeedSlider.Value = 1;
    app.VolumeSlider.Value = 1;
    app.PitchSlider.Value = 0;
    app.echoAdded = false;
    app.nGraph = app.yGraph;
end
