#  Main ssh key
#resource "hcloud_ssh_key" "default" {
 # name       = "Panev"
 # public_key = "${file("~/.ssh/id_rsa.pub")}"
#}

# Obtain ssh key data
data "hcloud_ssh_key" "ssh_key" {
  fingerprint = "e3:23:91:4f:de:ae:2f:cd:7e:06:3c:eb:74:9d:82:13" 
}

data "hcloud_ssh_key" "ssh_key_2" {
  fingerprint = "47:bd:2b:e2:83:89:b7:1b:d3:b3:af:81:45:e0:e8:d9" 
}


# Token Variable Definition
variable "hcloud_token" {
default = "Put here, yours TOKEN"
}

# Name variable definition
variable "name" {
default = "web2"
}

# Defining a variable source OS image for an instance
variable "image" {
default = "ubuntu-18.04"
}

# Definition of an instance type variable depending on the choice of tariff
variable "server_type" {
default = "cx11"
}

# Definition of the region in which the instance will be created
variable "datacenter" {
default = "nbg1-dc3"
}
