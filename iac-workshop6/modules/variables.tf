variable "region" {
  description = "Select the region from the following list: us-east-1,us-east-2, us-west-1 and us-west-2"
  #default     = "us-east-2" # Update your region
  type = string
}
variable "owner" {
  description = "suffix to assign the resource to the owner."
  type        = string
  #default     = "firstname-lastname"
}
