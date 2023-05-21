# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "net_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "development.apac+net02@gmail.com"
    AccountName  = "net-account-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Network"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "development.apac+net01@gmail.com"
    SSOUserFirstName = "Bruno"
    SSOUserLastName  = "F"
  }

  account_tags = {
    "ABC:Owner"       = "development.apac+net02@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Network OU"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "BRuno"
    change_reason       = "Provisioning new account for Net OU"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox"
}
