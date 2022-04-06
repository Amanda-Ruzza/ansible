resource "aws_security_group" "web_server_sg" {
  name        = "web_server_sg"
  description = "Allow access to this server"
  vpc_id      = data.aws_vpc.main_vpc.id

  # INBOUND CONNECTIONS

  ingress {
    description = "Allows SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["68.160.218.208/32"] # 0.0.0.0/0
  }

  ingress {
    description = "Allows HTTP into the EC2"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["68.160.218.208/32"] # 0.0.0.0/0 #only for my own IP address
  }


  #OUTBOUND CONNECTIONS
  egress {
    description = "Allows access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}
