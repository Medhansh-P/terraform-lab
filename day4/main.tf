terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Dynamic container configuration
variable "container_config" {
  default = [
    { name = "web1", port = 8085 },
    { name = "web2", port = 8086 },
    { name = "web3", port = 8087 }
  ]
}

# Create multiple containers dynamically
module "nginx_containers" {
  source = "./modules/nginx_container"

  for_each = {
    for c in var.container_config :
    c.name => c
  }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = docker_image.nginx.name
}

# Output URLs
output "container_urls" {
  value = [
    for c in var.container_config :
    "http://localhost:${c.port}"
  ]
}