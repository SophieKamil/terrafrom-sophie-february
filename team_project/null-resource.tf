resource "null_resource" "commands_to_run" {
  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    source      = "r1soft.repo"
    destination = "/tmp/r1soft.repo"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "centos"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.centos.public_ip}"
    }

    inline = [
      "sudo mv /tmp/r1soft.repo /etc/yum.repos.d/r1soft.repo",
      "sudo yum install serverbackup-enterprise -y",
      "sudo serverbackup-setup --user admin --pass password --http-port 80",
      "sudo /etc/init.d/cdp-server restart",
    ]
  }
}
