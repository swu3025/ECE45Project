% Button pushed function: RemoveEchoButton
function RemoveEchoButtonPushed(app, event)
if app.echoAdded
    alpha = 0.5;
    [~,dl] = findpeaks(app.Rmm,app.lags,'MinPeakHeight',0.22);

    mtNew = filter(1,[1 zeros(1,100) alpha],app.mtEcho);
    
    plot(app.UIAxes, app.t,mtNew)
end
end