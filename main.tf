provider "null" {}


variable "docker_compose_file" {
    description = "path to docker compose file"
    default = "docker-compose.yml"
}
variable "action" {
    description = "Action to perform: up or down"
    default = "up"
}

variable "docker_compose_flags" {
    description = "Additional flags for docker-compose"
    default = "-d"
}

resource "null_resource" "elk_container_control" {
    triggers = {
        action = var.action
    }

    provisioner "local-exec" {
        command = "docker-compose ${var.action} ${var.docker_compose_flags}"
        environment = {
            COMPOSE_FILE = var.docker_compose_file
        }
    }
}