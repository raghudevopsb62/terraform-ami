resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo ${var.COMPONENT}, ${var.APP_VERSION}"
  }
}
