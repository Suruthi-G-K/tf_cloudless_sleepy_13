
/*
terraform {
  required_version = ">= 0.13"
  required_providers {
    null = {
      source = "hashicorp/null"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}
*/

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.16.0"
    }
  }
}

provider "ibm" {
 /* ibmcloud_api_key = var.ibmCloudApiKey */
}
