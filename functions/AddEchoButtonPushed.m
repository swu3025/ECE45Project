%Gordon's Add Echo
% Button pushed function: AddEchoButton
function AddEchoButtonPushed(app, event)
%
%Modelling echo
%
timelag = 0.23;
Fs = 1024;
delta = round(Fs*timelag);
alpha = 0.5;

orig = [app.nGraph;zeros(delta,1)];
echo = [zeros(delta,1);app.nGraph]*alpha;

app.mtEcho = orig + echo;

app.t = (0:length(app.mtEcho)-1)/Fs;

[app.Rmm,app.lags] = xcorr(app.mtEcho,'unbiased');

app.Rmm = app.Rmm(app.lags>0);
app.lags = app.lags(app.lags>0);
hold(app.UIAxes,'off')
plot(app.UIAxes,app.lags/Fs,app.Rmm)

app.echoAdded = true;

end
