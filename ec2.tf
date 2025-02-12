resource "aws_instance" "miserver" {
  ami                         = "ami-088b41ffb0933423f"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.ssh.id]
  associate_public_ip_address = true # Para asegurar que tenga IP pública
  count = 2

  tags = {
    Name = "Holamundo"
  }
}