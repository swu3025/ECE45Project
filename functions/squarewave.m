function result = squarewave(app, graph, holdOn)
    %https://stackoverflow.com/questions/67461532/how-to-represent-a-square-wave-in-matlab
    %william zhang square wave generator
    
    F = 1; 
    fs = 1000; 
    phase = 0;
    dt = 1/fs; % sampling interval
    length = 2; % length of wave is in seconds 
    time = (0:dt:length)'; % time variable of sine wave given by sampling
    
    %checking if we want to graph the original wave or the wave for the
    %mixer
    if(strcmpi(graph, 'yGraph'))
        app.yGraph= square(2*pi*F*time + phase);
    else
        app.y2Graph= square(2*pi*F*time + phase);
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
    title(app.UIAxes,'Square wave of F=1 and fs = 1000');
     
end