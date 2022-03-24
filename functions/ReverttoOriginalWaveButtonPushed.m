% Samuel's Revert Button
% Button pushed function: ReverttoOriginalWaveButton
function ReverttoOriginalWaveButtonPushed(app, event)
    %reverts the audo signal to the original signal and changes the
    %features back to its initial value
    audio = app.ChooseAudioDropDown.Value;
    hold(app.UIAxes,'off')
    if strcmpi(audio,'Cosine Wave')
        cosinewave(app,'yGraph',false)
    elseif strcmpi(audio, 'Sine Wave')
        sinewave(app,'yGraph',false)
    else
        squarewave(app,'yGraph',false)
    end
    app.VolumeSlider.Value = 1;
    app.SpeedSlider.Value = 1;
    app.PitchSlider.Value = 0;
    app.SelectAudiotoMixDropDown.Value = 'Choose Wave Below';

end
