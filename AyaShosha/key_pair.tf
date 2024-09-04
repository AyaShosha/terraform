# key_pair.tf
resource "aws_key_pair" "deployer" {
  key_name   = "my-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")  # Replace with the path to your public key

  tags = {
    Name = "deployer-key-pair"
  }
}
