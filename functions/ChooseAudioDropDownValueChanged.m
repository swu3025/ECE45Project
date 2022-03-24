% Value changed function: ChooseAudioDropDown
function ChooseAudioDropDownValueChanged(app, event)
    %depending on the value of the dropdown, the function calls
    %another function that creates the graph that matches with the dropdown value
    audio = app.ChooseAudioDropDown.Value;
    hold(app.UIAxes,'off');
    if strcmpi(audio,'Cosine Wave')
        cosinewave(app,'yGraph',false)
    elseif strcmpi(audio, 'Sine Wave')
        sinewave(app,'yGraph',false)
    else
        squarewave(app,'yGraph',false)
    end

end