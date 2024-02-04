how to execute terraform execution to start or stop docker environment

terraform apply -var="action=start"
terraform apply -var="action=stop"

or we could based on default values located on variable file or variable section in main.tf file

variable "action" {
  description = "Action to perform: start or stop"
  default     = "start"
}
