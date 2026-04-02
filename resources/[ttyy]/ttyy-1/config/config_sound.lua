ConfigSound = {}

-- How much ofter the player position is updated ?
ConfigSound.RefreshTime = 100

-- default sound format for interact
ConfigSound.interact_sound_file = "ogg"

-- is emulator enabled ?
ConfigSound.interact_sound_enable = true

-- how much close player has to be to the sound before starting updating position ?
ConfigSound.distanceBeforeUpdatingPos = 40

-- Message list
ConfigSound.Messages = {
    ["streamer_on"]  = "Streamer mode is on. From now you will not hear any music/sound.",
    ["streamer_off"] = "Streamer mode is off. From now you will be able to listen to music that players might play.",

    ["no_permission"] = "You cant use this command, you dont have permissions for it!",
}