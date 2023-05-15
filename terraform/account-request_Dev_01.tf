# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "Dev_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "development.apac+dev01@gmail.com"
    AccountName  = "Dev-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Development"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "development.apac+dev01@gmail.com"
    SSOUserFirstName = "Ronaldo"
    SSOUserLastName  = "R"
  }

  account_tags = {
    "ABC:Owner"       = "development.apac+dev01@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Ronaldo R"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "Development of Mobile apps"
}
