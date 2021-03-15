variable "aws_region" {
  description = "Region of aws to use"
  type        = string
  default     = "eu-west-2"
}

variable "aws_credentials_profile" {
  description = "High level profile name that the terraform uses for aws access to create new role/policy/user for pihole deployment"
  type        = string
}

variable "ingress_access_ip_address" {
  description = "Ip address that you will access the ts3server from. All other access will be locked."
  type        = string
}

variable "key_pair_name" {
  description = "Name to give the generated keypair that will be associated with the ts3 server ec2 isntance for ssh access"
  type        = string
  default     = "server-keypair"
}

variable "additional_tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = { Name = "Teamspeak 3 Server" }
}

variable "prefix_identifier" {
  description = "Prefix added to all resources in aws to differentiate between types of infra setup"
  type        = string
  default     = "ts3-"
}

variable "instance_type" {
  description = "Requested Instance Type"
  type        = string
  default     = "t3.nano"
}

variable "instance_hostname" {
  description = "Requested Instance Hostname"
  type        = string
  default     = "aws-ts3-server"
}

variable "instance_volume_size" {
  description = "Requested Instance Volume Size"
  type        = number
  default     = 8
}

variable "instance_ami_id" {
  description = "Requested Instance Ami Image Id"
  type        = string
  default     = "ami-05c424d59413a2876"
}
