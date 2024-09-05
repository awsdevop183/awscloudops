resource "aws_key_pair" "madhukey" {
  key_name   = "madhukey"  
  public_key = file("~/.ssh/id_rsa.pub") 
}