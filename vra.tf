  provider "vra7" {
      username = "hashi-iaas@hashi.local"
      password = ""
      tenant = "hashi"
      host = "https://vra-001.technoriot.local/"
      insecure = true
    }

  resource "vra7_resource" "example_machine1" {
  catalog_name = "RPTStack"
   resource_configuration = {
        
         LinuxVM.cpu = "2"
         LinuxVM.memory = "2048"
         LinuxVM.name = ""
         LinuxVM.ip_address = ""
         WindowsVM.cpu =  "2"
         WindowsVM.memory =  "2048"
         WindowsVM.name = ""
         WindowsVM.ip_address = ""
     }
     catalog_configuration = {
         _leaseDays = "5",
     }
     deployment_configuration = {
         reasons      = "IaC Validation"
         description  = "VMUG Deploy via terraform"
     }
     count = 1
}


output "vm_LinuxVM_Name" {
  value = "${vra7_resource.example_machine1.resource_configuration.LinuxVM.name}"
}
output "vm_LinuxVM_IPAddress" {
  value = "${vra7_resource.example_machine1.resource_configuration.LinuxVM.ip_address}"
}
output "vm_LinuxVM_CPU" {
  value = "${vra7_resource.example_machine1.resource_configuration.LinuxVM.cpu}"
}
output "vm_LinuxVM_Memory" {
  value = "${vra7_resource.example_machine1.resource_configuration.LinuxVM.memory}"
}
output "vm_WindowsVM_Name" {
  value = "${vra7_resource.example_machine1.resource_configuration.WindowsVM.name}"
}
output "vm_WindowsVM_IPAddress" {
  value = "${vra7_resource.example_machine1.resource_configuration.WindowsVM.ip_address}"
}output "vm_WindowsVM_CPU" {
  value = "${vra7_resource.example_machine1.resource_configuration.WindowsVM.cpu}"
}
output "vm_WindowsVM_Memory" {
  value = "${vra7_resource.example_machine1.resource_configuration.WindowsVM.memory}"
}
