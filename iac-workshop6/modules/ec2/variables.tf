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



variable "images" {
  description = "choose image for any region"
  type        = map(any)
  default = {
    us-east-1 = "ami-02f3f602d23f1659d"
    us-east-2 = "ami-074cce78125f09d61"
    us-west-1 = "ami-06604eb73be76c003"
    us-west-2 = "ami-0d2017e886fc2c0ab"
  }
}
variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "modules-ws6-instance"
}

variable "security_group_ids" {
  type        = list(any)
  description = "Security group ids"
}

variable "region" {
  description = "Select the region from the following list: us-east-1,us-east-2, us-west-1 and us-west-2"
  #default     = "us-east-2" # Update your region
  type = string
}
