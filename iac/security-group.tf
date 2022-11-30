resource "aws_security_group" "cluster_docker_swarm" {
    name = "cluster_docker_swarm"
    description = "criando grupo de acesso para cluster_docker_swarm"
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cdirs_cluster_docker_swarm
    }
    tags = {
        Name = "cluster_docker_swarm"
    }
}