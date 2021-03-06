/*

 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 |w|w|w|.|r|l|e|v|c|h|e|n|k|o|.|c|o|m|
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ 

 :: Terraform module (sample)
    
*/
resource "azurerm_availability_set" "avail_set" {
  count               = "${var.count}"
  location            = "${var.location}"
  name                = "${var.avset_name}${count.index}"
  resource_group_name = "${var.rg_name}"
  managed             = true

  tags = "${var.tags}"
}
