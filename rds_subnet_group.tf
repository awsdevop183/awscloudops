# resource "aws_db_subnet_group" "subnetgroup-1" {
#   name       = "main"
#   subnet_ids = [aws_subnet.private.id, aws_subnet.private-2.id]

#   tags = {
#     Name = "My DB subnet group"
#     CreatedBy = "Terraform_liftAndSHift"
#   }
# }