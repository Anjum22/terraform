#create vpc
resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "tfm_cust_vpc"
  }
}

#create IG and attach to vpc
resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id
}

#create subnet
resource "aws_subnet" "dev" {
  cidr_block = "10.0.0.0/24"
  vpc_id = aws_vpc.dev.id
}

#create RT and routing IG to RT (edit routes)
resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.dev.id
    }
}

#subnet association
resource "aws_route_table_association" "dev" {
  route_table_id = aws_route_table.dev.id
  subnet_id = aws_subnet.dev.id
}
