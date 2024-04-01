resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.Prod.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.nv-igw.id
  }

  tags = {
    Name = "Public-RT"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.Prod.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.nv-igw.id
#   }

  tags = {
    Name = "Private-RT"
  }
}


resource "aws_route_table_association" "private" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id = aws_subnet.private.id

  depends_on = [
    aws_route_table.private-rt,
    aws_subnet.private
  ] 
} 

resource "aws_route_table_association" "private-2" {
  route_table_id = aws_route_table.private-rt.id
  subnet_id = aws_subnet.private-2.id

  depends_on = [
    aws_route_table.private-rt,
    aws_subnet.private-2
  ] 
} 


resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public.id

  depends_on = [
    aws_route_table.public-rt,
    aws_subnet.public
  ] 
} 
resource "aws_route_table_association" "public-2" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id = aws_subnet.public-2.id

  depends_on = [
    aws_route_table.public-rt,
    aws_subnet.public-2
  ] 
} 