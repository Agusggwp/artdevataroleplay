RegisterCommand('record', function()
    TriggerEvent('crott:recordmenu')
  end)
  
  RegisterNetEvent('crott:recordmenu', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 1,
            header = "RockstarEditor Menu ",
            txt = ""
        },
    {
            id = 2,
            header = "Start Record",
            txt = "Select",
            params = {
                event = "crot:rec",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
        {
            id = 3,
            header = "Stop and Save",
            txt = "Select",
            params = {
                event = "crot:stop",
                args = {
                    number = 1,
                    id = 3
                }
            }
        },
        {
            id = 4,
            header = "Stop and Delete",
            txt = "Select",
            params = {
                event = "crot:delete",
                args = {
                    number = 1,
                    id = 4
                }
            }
        },
        {
            id = 5,
            header = "Open Rockstar Editor",
            txt = "Select",
            params = {
                event = "crot:rock",
                args = {
                    number = 1,
                    id = 5
                }
            }
        },
        {
          id = 6,
          header = "◀",
          txt = "",
          params = {
              event = "",
              args = {
                  number = 1,
                  id = 6
              }
          }
      },
    })
  end)
  
  AddEventHandler('crot:rec', function()
    StartRecording(1)
  end)
  
  AddEventHandler('crot:stop', function()
    StopRecordingAndSaveClip()
  end)
  
  AddEventHandler('crot:delete', function()
    StopRecordingAndDiscardClip()
  end)
  
  AddEventHandler('crot:rock', function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()  
  end)