Terraform vs Docker


starting terraform with action parameter to start or stop docker env.


terraform apply -var="action=up"
terraform apply -var="action=down"

or we could based on default values located on variable file or variable section in main.tf file

variable "action" {
  description = "Action to perform: start or stop"
  default     = "up"
}
