% Value changed function: SelectAudiotoMixDropDown
function SelectAudiotoMixDropDownValueChanged(app, event)
    %depending on the value of the dropdown, the function calls
    %another function that creates the graph that matches with the dropdown value
    secondAudio = app.SelectAudiotoMixDropDown.Value;
    %makes sure that there are only two audo signals on the graph
    hold(app.UIAxes,'off');
    ChooseAudioDropDownValueChanged(app,event);
    if strcmpi(secondAudio,'Cosine Wave')
        cosinewave(app,'y2Graph',true)
    elseif strcmpi(secondAudio, 'Sine Wave')
        sinewave(app,'y2Graph',true)
    else
        squarewave(app,'y2Graph',true)
    end
end