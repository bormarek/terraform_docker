Terraform vs Docker


starting terraform with action parameter to start or stop docker env.

starting env:

    terraform apply -var="action=up"
    starting docker without putting output to backgroud
    terraform apply -var action=up -var docker_compose_flags=""


destroying env:

    terraform apply -var action=down -var docker_compose_flags=""

