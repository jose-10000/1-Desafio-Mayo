#################################
#    ## MySQL - Variables ##    #
#################################

# company name 
variable "company" {
  type        = string
  description = "This variable defines the company name used to build resources"
  default     = "desafio-1"
}

# company prefix 
variable "prefix" {
  type        = string
  description = "This variable defines the company name prefix used to build resources"
  default     = "dev"
}



# azure region
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "east us"
}

# azure region shortname
variable "region" {
  type        = string
  description = "Azure region where the resource group will be created"
  default     = "ne"
}

# owner
variable "owner" {
  type        = string
  description = "Specify the owner of the resource"
}

# description
variable "description" {
  type        = string
  description = "Provide a description of the resource"
}

# application or company environment
variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
}

########################################
# Azure Database for MySQL - Variables #
########################################

variable "mysql-admin-login" {
  type        = string
  description = "Login to authenticate to MySQL Server"
}

variable "mysql-admin-password" {
  type        = string
  description = "Password to authenticate to MySQL Server"
}

variable "mysql-version" {
  type        = string
  description = "MySQL Server version to deploy"
  default     = "8.0"
}

variable "mysql-sku-name" {
  type        = string
  description = "MySQL SKU Name"
  default     = "B_Gen5_1"
}

variable "mysql-storage" {
  type        = string
  description = "MySQL Storage in MB, from 5120 MB to 4194304 MB"
  default     = "32768"
}

variable "db_name_prefix" {
  type        = string
  description = "MySQL Server Name"
  default     = "desafio-mysql-server"
}