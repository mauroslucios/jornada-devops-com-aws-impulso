terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "= 3.74.2"
        }
    }
}


provider "aws" {
    region = "us-east-1"
    profile = "default"
}

/* resource "aws_instance" "cluster_docker_swarm" {
    count = 3
    ami = var.ami["us-east-1"]
    instance_type = "t2.micro"
    key_name = var.key_name
    tags = {
        Name = "docker-${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.cluster_docker_swarm.id}"]
    
} */

resource "aws_vpc" "vpc_dev"{
    cidr_block = var.vpcCIDRblockDocker
}

resource "aws_s3_bucket" "dev-1"{
    bucket = "repo-bucket-dev-1"
    tags = {
        Name = "repobucket-dev1"
    }
}

resource "aws_security_group" "docker-swarm" {
  name = "security-group-docker-swarm"

  #Incoming traffic
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    #cidr_blocks = ["10.0.0.0/16"] #replace it with your ip address
    cidr_blocks = var.cdirs_cluster_docker_swarm
  }

  #Outgoing traffic
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}