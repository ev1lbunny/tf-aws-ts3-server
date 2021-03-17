resource "aws_security_group" "security_group" {
  name        = "${var.prefix_identifier}security-group"
  description = "Configures All rules required for ${var.prefix_identifier}server instance access and management"

  ingress {
    description = "Home LAN SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ingress_access_ip_address}/32"]
  }

  ingress {
    description = "Open Teamspeak Voice Port"
    from_port   = 9987
    to_port     = 9987
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:AWS008
  }

  ingress {
    description = "Open Teamspeak File Transfer Port"
    from_port   = 30033
    to_port     = 30033
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:AWS008
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] #tfsec:ignore:AWS009
  }

  tags = merge(
    {},
    var.additional_tags,
  )
}
