variable "ami" {
    type = map(string)
    default = {
        "us-east-1" = "ami-08c40ec9ead489470"
    }
}

variable "cdirs_cluster_docker_swarm" {
    type  = list(string)
    default = ["138.117.223.204/32"]
}

variable "key_name" {
    default = "mauroslucios"
}


variable "region" {
     default = "us-east-1"
}
variable "availabilityZone" {
     default = "us-east-1a"
}
variable "instanceTenancy" {
    default = "default"
}
variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}
variable "vpcCIDRblockDocker" {
    default = "10.0.0.0/16"
}
variable "publicsCIDRblock" {
    default = "10.0.1.0/24"
}
variable "privatesCIDRblock" {
    default = "10.0.2.0/24"
}
variable "publicdestCIDRblock" {
    default = "0.0.0.0/0"
}
variable "localdestCIDRblock" {
    default = "10.0.0.0/16"
}
variable "ingressCIDRblock" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "egressCIDRblock" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "mapPublicIP" {
    default = true
}