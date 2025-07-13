Raspberry Pi microcontroller playground

This is a clone of https://github.com/ImplFerris/pico2-quick that adds a rust devcontainer complete with the [dev setup](https://pico.implrust.com/setup.html)
The quickstart of the wonderful book [Embedded Programming with Raspberry Pi Pico 2 and Rust](https://github.com/ImplFerris/pico-pico) .


## install

Install the dev containers extension in Visual Code https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

Then do  `command + shift + p` and type `Dev Container: 
Rebuild and Reopen in Container`

(The rust devcontainer : https://github.com/devcontainers/images/blob/main/src/rust/.devcontainer/Dockerfile)
Once the dev container is running in the terminal do
`cargo build`  
```cargo run```

References:  
[Embedded Programming with Raspberry Pi Pico 2 and Rust](https://pico.implrust.com)  
Devcontainers with podman https://geekingoutpodcast.substack.com/p/running-dev-containers-locally-with

Other
