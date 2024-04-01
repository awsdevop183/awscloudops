resource "aws_vpc" "Prod" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = "Prod"
  }
  tags_all = {
    Name = "Prod"
    CreatedBy = "Madhu"
  }
  # lifecycle {
  #   prevent_destroy = true
  # }
}

resource "aws_subnet" "private" {
  vpc_id = aws_vpc.Prod.id
  availability_zone = "us-east-1a"
  cidr_block = var.subnet.nv-private
  tags = {
    Name = "Private"
    CreatedBy = "Madhu"
  }
  tags_all = {
    Name = "Private"
    CreatedBy = "Madhu"
  }
  
  # lifecycle {
  #   prevent_destroy = true
  # }
  
  depends_on = [
    aws_vpc.Prod
  ]
}

resource "aws_subnet" "private-2" {
  vpc_id = aws_vpc.Prod.id
  availability_zone = "us-east-1b"
  cidr_block = var.subnet.nv-private-2
  tags = {
    Name = "Private-2"
    CreatedBy = "Madhu"
  }
  tags_all = {
    Name = "Private-2"
    CreatedBy = "Madhu"
  }
  
  # lifecycle {
  #   prevent_destroy = true
  # }
  
  depends_on = [
    aws_vpc.Prod
  ]
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.Prod.id
  availability_zone = "us-east-1a"
  cidr_block = var.subnet.nv-public
  map_public_ip_on_launch = true
  tags = {
    Name = "Public"
    CreatedBy = "Madhu"
  }
  tags_all = {
    Name = "Public"
    CreatedBy = "Madhu"
  }

  depends_on = [
    aws_vpc.Prod
  ]
}

resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.Prod.id
  availability_zone = "us-east-1b"
  cidr_block = var.subnet.nv-public-2
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-2"
    CreatedBy = "Madhu"
  }
  tags_all = {
    Name = "Public-2"
    CreatedBy = "Madhu"
  }


  depends_on = [
    aws_vpc.Prod
  ]
}


/*
North Virginia Gateways
*/

resource "aws_internet_gateway" "nv-igw" {
  vpc_id = aws_vpc.Prod.id
  tags = {
    Name = "Prod IGW"
    CreatedBy = "Madhu"
  }
  tags_all = {
    Name = "Prod IGW"
    CreatedBy = "Madhu"
  }


}

//============ VPC - Dev  =========