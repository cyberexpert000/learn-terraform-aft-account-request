module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "development.apac+sand01@gmail.com"
    AccountName               = "sandbox01-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "development.apac+sand01@gmail.com"
    SSOUserFirstName          = "Sandbox01"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "development.apac+sand01@gmail.comm"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Sandbox"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}