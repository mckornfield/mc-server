# mc-server
Minecraft server setup

## Initial setup for a windows -> linux vm

1. Create a bootable USB stick ([windows tutorial](https://ubuntu.com/tutorials/create-a-usb-stick-on-windows#1-overview))
1. Insert the USB stick into the old machine
1. Turn the windows machine you want to convert to linux on, then hold Escape, F2, F10, or F12 (i.e. follow [these instructions](https://ubuntu.com/tutorials/install-ubuntu-desktop#4-boot-from-usb-flash-drive))
1. Follow the instructions to install ubuntu once booted, just doing a regular install
1. Add your key to the `~/.ssh/authorized_keys`
1. Clone this repository to `/opt/mc-server` , e.g. `git clone https://github.com/mckornfield/mc-server.git /opt/mc-server`
1. Run the setup, e.g. `sudo /opt/mc-server/setup.sh`
1. Start the server, e.g. `/opt/mc-live-server/run_server.sh`
