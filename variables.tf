variable "name" {
  type = string
  default = "rafael"
}

variable "machine_type" {
  type = string
  default = "g1-small"
}

variable "zone" {
  type = string
  default = "us-west4-b"
}

variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}

variable "region" {
  type = string
  default = "us-west4"
}

variable "network" {
  type = string
  default = "default"
}

variable "size" {
  type = string
  default = "30"
}

variable "namedisk2" {
  type = string
  default = "disco2"
}

variable "sizedisk2" {
  type = string
  default = "10"
}

variable "firewallname" {
  type = string
  default = "firewall"
}