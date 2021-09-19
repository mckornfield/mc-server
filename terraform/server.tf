resource "digitalocean_droplet" "mc_server" {
  image  = "debian-10-x64"
  name   = "mc"
  region = "sfo3"
  size   = "s-2vcpu-4gb"
  ssh_keys = ["37:45:4a:cd:5e:72:46:48:8f:69:e9:98:4f:6e:27:e0"] # SSH keys that need to be installed on the server.
  tags = ["mc"]
}