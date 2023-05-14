# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "development.apac+sand1@gmail.com"
    AccountName  = "sandbox-account-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "development.apac+sand02@gmail.com"
    SSOUserFirstName = "Jose"
    SSOUserLastName  = "Butler"
  }

  account_tags = {
    "ABC:Owner"       = "development.apac+sand02@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Sndbox"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Jose Butler"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations_Business_Unit"
}
