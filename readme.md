# Raspberry Pi microcontroller playground

This is a clone of https://github.com/ImplFerris/pico2-quick that adds a Visual Code Rust dev container complete with the [dev setup for RP Pico 2 development](https://pico.implrust.com/setup.html).  
It's the quickstart of the book [Embedded Programming with Raspberry Pi Pico 2 and Rust](https://github.com/ImplFerris/pico-pico).
Which seems a gentle walk through of some [Embassy examples](https://github.com/embassy-rs/embassy/blob/main/examples/rp235x/src/bin/blinky.rs)



## install

Install the dev containers extension in Visual Code https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

Then do  `command + shift + p` and select `Dev Container: 
Rebuild and Reopen in Container`

(The rust devcontainer : https://github.com/devcontainers/images/blob/main/src/rust/.devcontainer/Dockerfile)   
Once the dev container is running, in the terminal do   
```cargo build  --target=thumbv8m.main-none-eabihf```  
```cargo run```

### debugging

Show usb devices in mac
```ioreg -p IOUSB```
Look for `RP2350 Boot`



## References:  
[Embedded Programming with Raspberry Pi Pico 2 and Rust](https://pico.implrust.com)  

[Embedded Rust Book](https://docs.rust-embedded.org/book/)  
[Embassy Book](https://embassy.dev/book/)

[Libs](https://github.com/rust-embedded/awesome-embedded-rust?tab=readme-ov-file#no-std-crates)  
For mqtt etc

[RustNL meetup](https://youtu.be/XI8JvFUUTso?si=-tZ7Ck8AgCG9tadF) 
[RustNL](https://rustnl.org/#join)   