# Create an IBM Cloud infrastructure SSH key. You can find the SSH key surfaces in the infrastructure console under Devices > Manage > SSH Keys
/*
resource "ibm_compute_ssh_key" "test_key_1" {
  label      = "test_key_1"
  public_key = "var.ssh_public_key"
}
*/

# Create an arbitrary local resource
data "template_file" "test" {
  template = "AAAA Hello, I am a template. My sample_var value marked as sensitive in tf  = $${sample_var}, while ibmCloudApiKey marked as secured in schematics is $${ibmCloudApiKey}"

  vars = {
    sample_var = var.sample_var,
    ibmCloudApiKey = var.ibmCloudApiKey
  }
}

# This is just to make sure that ibm provider is instantiated
/* data "ibm_schematics_workspace" "test" {
  workspace_id = "my-workspace-id"
}
*/

resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}