resource "local_file" "test" {
  content  = "Yeh file Jenkins aur Terraform ne milkar banayi hai!"
  filename = "jenkins_tf_test.txt"
}
