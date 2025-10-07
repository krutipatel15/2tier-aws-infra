variable "db_sub_name" {}
variable "pri_sub_5a_id" {}
variable "pri_sub_6b_id" {}
variable "db_name" {}
variable "db_password" {
    sensitive = true
}
variable "db_username" {}
variable "db_sg_id" {}