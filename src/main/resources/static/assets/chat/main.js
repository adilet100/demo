window.onload = () => {
    var Start = document.querySelector("#start");
    const volume = document.getElementById("volume");
    const volumeTwo = document.getElementById("volumeTwo");
    const video = document.getElementById("local");
    const videoremote = document.getElementById("remote");
    volume.oninput = () => {
        console.log(volume.value);
        video.volume = volume.value / 100;
    };
    volumeTwo.oninput = () => {
        console.log(volumeTwo.value);
        videoremote.volume = volumeTwo.value / 100;
    };
    let p = null;
    OfferConstructor = p => {
        p.on("signal", data => {
            document.getElementById("offer").textContent = JSON.stringify(data);
            console.log(document.getElementById("offer").textContent = JSON.stringify(data));
        });
        p.on("error", err => {
            console.log(err);
        });
        p.on("stream", stream => {
            videoremote.srcObject = stream;
            videoremote.play();
        });
    };
    Start.onclick = () => {
        navigator.mediaDevices.getUserMedia({
            "video": true,
            "audio": true
        })
            .then(stream => {
                p = new SimplePeer({
                    initiator: true,
                    stream: stream,
                    trickle: false
                });
                OfferConstructor(p);
                video.srcObject = stream;
                video.play();
            });
    };
    document.getElementById("send").onsubmit = e => {
        e.preventDefault();
        if (p == null) {
            p = new SimplePeer({
                initiator: false,
                trickle: false
            });
            OfferConstructor(p);
        }
        p.signal(JSON.parse(e.target.querySelector("textarea").value));
    };
};
