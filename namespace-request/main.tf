#################################################################
# Terraform template that will poll Infrastructure Management for approval
#
# Version: 2.4
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Licensed Materials - Property of IBM
#
# ©Copyright IBM Corp. 2020.
#
#################################################################

#########################################################
# Define the Terraform version
#########################################################
terraform {
  required_version = "~> 0.12.0"
}

#########################################################
# Define the variables
#########################################################
variable "ocp-apiserver" {
    description = "ocp apiserver"
}

variable "authtoken" {
    description = "ocp login token"
}

variable "namespace_name" {
    description = "Namespace name to create"
}

variable "cpu_hard_limit" {
    default = "4"
    description = "CPU Quota "
}

variable "memory_hard_limit" {
    default = 5Gi
    description = "Memory Quota"
}

#########################################################
# Poll Infrastructure Management for approval status
#########################################################
resource "null_resource" "poll_endpoint" {
 provisioner "local-exec" {
    command = "echo aaa"
 }
}

#########################################################
# Output
#########################################################
output "approval_status" {
}
