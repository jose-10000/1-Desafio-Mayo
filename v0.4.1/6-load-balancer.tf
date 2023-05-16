
# Create Load Balancer
resource "azurerm_lb" "my_lb" {
  name                = "loadBalancer"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.my_public_ip.id
  }
}

# Create Load Balancer Backend Address Pool
resource "azurerm_lb_backend_address_pool" "lb-adress-pool-test" {
  loadbalancer_id = azurerm_lb.my_lb.id
  virtual_network_id    = azurerm_virtual_network.default.id  
  name            = "BackEndAddressPool"
  
}



# Create public IPs
resource "azurerm_public_ip" "my_public_ip" {
  name                = "myPublicIP"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}

#resource "azurerm_network_interface" "my_nic-test" {
#  count               = 7
#  name                = "acctni${count.index}"
#  location            = azurerm_resource_group.rg.location
#  resource_group_name = azurerm_resource_group.rg.name
#
#  ip_configuration {
#    name                          = "testConfiguration"
#    subnet_id                     = azurerm_subnet.vm-default.id
#    private_ip_address_allocation = "Dynamic"
#  }
#}


# Create Load Balancer Probe
# Create Load Balancer Rule

### borrar esto
# Create the availability set
resource "azurerm_availability_set" "my_availability_set" {
  name                = "myAvailabilitySet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}