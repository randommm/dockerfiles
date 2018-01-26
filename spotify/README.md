Usage:

    mkdir ~/.config/spotify
    mkdir ~/.cache/spotify


Then:

    docker run -it --rm \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=unix$DISPLAY \
        \
        -v /run/user/$UID/pulse/native:/tmp/pulsesocket \
        -e PULSE_SERVER=unix:/tmp/pulsesocket \
        \
        -v ~/.config/spotify:/home/spotify/.config/spotify \
        -v ~/.cache/spotify:/home/spotify/.cache/spotify \
        \
        --name spotify \
        marcoinacio/spotify


Note: if you run Docker before the mkdirs above, you'll have to chown them to your user.

Disclaimer: I'm not the author of the Dockerfile nor I modified it, I just:

* Grabbed it from https://github.com/jessfraz/dockerfiles/.
* Added --rm and binds to local user configs.
* Added Unix socket command for Pulseaudio (see ``ctitze`` answer here https://stackoverflow.com/a/28995539) because direct alsa link was blocking audio from the host machine programs.
* Added automatic builds and this README.md for your convenience.
