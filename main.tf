terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.20"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

provider "docker" {}
provider "local" {}

# Create a local text file to show Terraform skills
resource "local_file" "portfolio_file" {
  filename = "${path.module}/my-portfolio-resource.txt"
  content  = "This file is managed by Terraform. Portfolio-ready!"
}

# Pull Nginx Docker image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create Nginx container
resource "docker_container" "nginx" {
  name  = "my-nginx"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 8080
  }
}