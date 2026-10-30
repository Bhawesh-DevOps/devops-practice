variable "env_name" { 
  default = "Dev" 
}

resource "local_file" "advanced_test" {
  content  = "Yeh deployment ${var.env_name} environment ke liye Jenkins ne ki hai!"
  filename = "${var.env_name}_server.txt"
}

output "deployed_file_name" {
  value = local_file.advanced_test.filename
}
