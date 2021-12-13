resource "ibm_is_vpc" "vpc1" {
  name                      = "vpc1"
  address_prefix_management = var.address_prefix_management_variable
}
resource "ibm_is_ike_policy" "example" {
  name                     = "test-ike"
  authentication_algorithm = var.authentication_algorithm_variable
  encryption_algorithm     = "3des"
  dh_group                 = 2
  ike_version              = 1
}
resource "ibm_is_vpc" "vpc2" {
  name                      = "vpc2"
  encryption_algorithm = var.encryption_algorithm_variable
}
resource "ibm_is_lb" "lb" {
  name                      = "lb"
  type = var.type_variable
}

resource "ibm_is_lb_listener" "name" {
  name = "ss"
  protocol = var.protocol_variable
}


