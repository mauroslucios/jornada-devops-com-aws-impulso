terraform{
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "mauroslucioslabs"
        workspaces{
            name = "cluster_docker_swarm"
        }
    }
}