# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

policy "enforce-mandatory-tags" {
    enforcement_level = "hard-mandatory"
}

policy "restrict-ec2-instance-type" {
    enforcement_level = "hard-mandatory"
}

policy "limit-proposed-monthly-cost" {
    enforcement_level = "hard-mandatory"
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfrun-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfrun-functions/tfrun-functions.sentinel"
}