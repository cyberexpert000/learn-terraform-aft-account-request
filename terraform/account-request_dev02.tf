# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "Dev_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "development.apac+dev02@gmail.com"
    AccountName  = "dev-account-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Development"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "development.apac+dev02@gmail.com"
    SSOUserFirstName = "Dhoni"
    SSOUserLastName  = "MS"
  }

  account_tags = {
    "ABC:Owner"       = "development.apac+dev02@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dhone MS"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "dev-customizations"
}
