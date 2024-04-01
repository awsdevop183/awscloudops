# resource "aws_vpc" "Dev" {
#   cidr_block = var.dev-vpc-cidr
#   tags = {
#     Name = "Dev"
#   }
#   tags_all = {
#     Name = "Dev"
#     CreatedBy = "Terraform"
#   }
#   # lifecycle {
#   #   prevent_destroy = true
#   # }
# }

# resource "aws_subnet" "dev-private" {
#   vpc_id = aws_vpc.Dev.id
#   availability_zone = "us-east-1a"
#   cidr_block = var.dev-subnet.nv-private
#   tags = {
#     Name = "Dev-Private"
#     CreatedBy = "Terraform"
#   }
#   tags_all = {
#     Name = "Dev-Private"
#     CreatedBy = "Terraform"
#   }
  
#   # lifecycle {
#   #   prevent_destroy = true
#   # }
  
#   depends_on = [
#     aws_vpc.Dev
#   ]
# }

# resource "aws_subnet" "dev-private-2" {
#   vpc_id = aws_vpc.Dev.id
#   availability_zone = "us-east-1b"
#   cidr_block = var.dev-subnet.nv-private-2
#   tags = {
#     Name = "Private-2"
#     CreatedBy = "Terraform"
#   }
#   tags_all = {
#     Name = "Private-2"
#     CreatedBy = "Terraform"
#   }
  
#   # lifecycle {
#   #   prevent_destroy = true
#   # }
  
#   depends_on = [
#     aws_vpc.Dev
#   ]
# }

# resource "aws_subnet" "dev-public" {
#   vpc_id = aws_vpc.Dev.id
#   availability_zone = "us-east-1a"
#   cidr_block = var.dev-subnet.nv-public
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "Public"
#     CreatedBy = "Terraform"
#   }
#   tags_all = {
#     Name = "Public"
#     CreatedBy = "Terraform"
#   }

#   depends_on = [
#     aws_vpc.Dev
#   ]
# }

# resource "aws_subnet" "dev-public-2" {
#   vpc_id = aws_vpc.Dev.id
#   availability_zone = "us-east-1b"
#   cidr_block = var.dev-subnet.nv-public-2
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "Public-2"
#     CreatedBy = "Terraform"
#   }
#   tags_all = {
#     Name = "Public-2"
#     CreatedBy = "Terraform"
#   }


#   depends_on = [
#     aws_vpc.Dev
#   ]
# }


# /*
# North Virginia Gateways
# */

# resource "aws_internet_gateway" "dev-nv-igw" {
#   vpc_id = aws_vpc.Dev.id
#   tags = {
#     Name = "Dev IGW"
#     CreatedBy = "Terraform"
#   }
#   tags_all = {
#     Name = "Dev IGW"
#     CreatedBy = "Terraform"
#   }


# }
