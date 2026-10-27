variable "name" {
  type = string
}
variable "min_size" {
  type = string
}
variable "launch_template_id" {
  type = string
}
variable "target_group_arn" {
  type = string
}
variable "max_size" {
  type = string
}
variable "vpc_zone_identifier" {
  type = list(string)
}
variable "desired_capacity" {
  type    = string
  default = "2"
}