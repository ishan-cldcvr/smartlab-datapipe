locals {
    environment_vars = read_terragrunt_config(find_in_parent_folders("terragrunt.hcl"))
}

terraform{
    source = "git::https://github.com/ishan-cldcvr/smartlab-datapipe/modules/elasticsearch"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}