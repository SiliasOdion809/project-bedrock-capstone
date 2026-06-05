resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name    = "project-bedrock-vpc"
    Project = var.project_tag
  }
}

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"

    "kubernetes.io/role/elb" = "1"

    "kubernetes.io/cluster/project-bedrock-cluster" = "shared"

    Project = var.project_tag
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"

    "kubernetes.io/role/elb" = "1"

    "kubernetes.io/cluster/project-bedrock-cluster" = "shared"
    
    Project = var.project_tag
  }
}

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "private-subnet-1"

    "kubernetes.io/role/internal-elb" = "1"

    "kubernetes.io/cluster/project-bedrock-cluster" = "shared"

    Project = var.project_tag
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = "${var.region}b"

  tags = {
    Name = "private-subnet-2"

    "kubernetes.io/role/internal-elb" = "1"

    "kubernetes.io/cluster/project-bedrock-cluster" = "shared"

    Project = var.project_tag
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name    = "project-bedrock-igw"
    Project = var.project_tag
  }
}

resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Project = var.project_tag
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name    = "project-bedrock-nat"
    Project = var.project_tag
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.default_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name    = "public-route-table"
    Project = var.project_tag
  }
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = var.default_cidr
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name    = "private-route-table"
    Project = var.project_tag
  }
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private.id
}