
data "aws_ssm_parameter" "al2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "al2023" {
  ami           = data.aws_ssm_parameter.al2023.value
  instance_type = "t2.micro"
  tags = {
    Name = "amazon-linux-2023-kernel-6.1"
  }
}
