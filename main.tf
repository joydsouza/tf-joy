# Download the ghost:latest docker_image "image_id" to the system using a Terraform resource
resource "docker_image" "image_id" {
  name = "ghost:latest"
}
resource "docker_image" "image_id1" {
  name = "ubuntu:latest"
}

resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  name  = "foo"
}
