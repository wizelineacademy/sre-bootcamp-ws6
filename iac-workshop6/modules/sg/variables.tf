variable "owner" {
  description = "suffix to assign the resource to the owner."
  type        = string
  #default     = "firstname-lastname"
}

# We added these two from the previous example
variable "message" {
  description = "Message in the EC2 Instance"
  type        = string
  default     = "WS6"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "modules-ws6-instance"
}
