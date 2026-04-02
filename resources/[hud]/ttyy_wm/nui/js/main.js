const maxLength = 10 // To prevent long names from runing the hud

var app = new Vue({
    el: '#initapp',
    data: {
        serverName: "ARTDEVATA ROLEPLAY INDONESIA",
        server_logo: "https://cdn.discordapp.com/attachments/1166354413686894622/1167576870464794704/image-removebg-preview_1.png?ex=654ea1b2&is=653c2cb2&hm=57b33922652a596052deb67980d6c9f10e17fb7df9bd3c6e80285dae3e79a3a3&.png",
        player: '4DIT',
        player_job: "",
        playerpingofc: 11,
        ID: 2,
        discord: "",
        active_players: 0,


        // ICONS 
        ID_ICON: "",
        PLAYERS_ICON: "",
        LOBBY_ICON: "",
        JOB_ICON: "",
        DISCORD_ICON: "",


        elements: []
    },
    computed: {
        serverPlayers: function() {
            if(this.player.length > maxLength) {
                return this.player.substring(0, maxLength - 3) + ".."
            } else {
                return this.player
            }
        }
    }
})

const getEvent = (event, data = {}, cb = (() => {})) => {
    fetch(`https://${GetParentResourceName()}/${event}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(data)
    }).then(response => response.json()).then(response => {
        cb(response)
    })
}

function keepitUpdated() {
    getEvent("ttyy_hud:HandInfo", {}, response => {
        if(response && typeof response === 'object' && Object.keys(response).length > 0) {
            Object.keys(response).forEach(key => {
                let value = response[key]

                if(key == "player_fps") {
                    if(value < 10) {
                        value = `${value}&nbsp;&nbsp;`
                    } else if(value < 100) {
                        value = `${value}&nbsp;`
                    }
                }
                app[key] = value
            })
        }
    })
}

keepitUpdated()
setInterval(keepitUpdated, 1000)


window.addEventListener('message', function(event) {
    const data = event.data;

    if(data.action) {
        if(data.action == "hide_hud") {
            var x = document.getElementById("initapp");
            x.style.display = "none";
        } else if (data.action == "show_hud") {
            var x = document.getElementById("initapp");
            x.style.display = "block";
        }
    }
});

getEvent("ready")
