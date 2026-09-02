variable "west_region" {
  description = "AWS region for West"
  type        = string
  default     = "us-west-2"
}

variable "east_region" {
  description = "AWS region for East"
  type        = string
  default     = "us-east-1"
}

variable "west_vpc_cidr" {
  description = "CIDR for West VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "east_vpc_cidr" {
  description = "CIDR for East VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "west_subnet_cidr" {
  description = "CIDR for West subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "east_subnet_cidr" {
  description = "CIDR for East subnet"
  type        = string
  default     = "10.20.1.0/24"
}

variable "west_az" {
  description = "Availability Zone in us-west-2"
  type        = string
  default     = "us-west-2a"
}

variable "east_az" {
  description = "Availability Zone in us-east-1"
  type        = string
  default     = "us-east-1a"
}

variable "west_ami" {
  description = "AMI ID for us-west-2"
  type        = string
}

variable "east_ami" {
  description = "AMI ID for us-east-1"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}