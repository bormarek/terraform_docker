provider "null" {}


variable "docker_compose_file" {
    description = "path to docker compose file"
    default = "docker-compose.yml"
}
variable "action" {
    description = "Action to perform: starto: stop"
    default = "up"

}

resource "null_resource" "elk_container_control" {
    triggers = {
        action = var.action
    }

    provisioner "local-exec" {
        command = "docker-compose ${var.action} -d"
    }
}