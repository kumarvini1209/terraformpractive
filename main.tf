# =========================
# US-WEST-2
# =========================

resource "aws_vpc" "west" {
  cidr_block = var.west_vpc_cidr

  tags = {
    Name = "west-vpc"
  }
}

resource "aws_subnet" "west" {
  vpc_id            = aws_vpc.west.id
  cidr_block        = var.west_subnet_cidr
  availability_zone = var.west_az

  tags = {
    Name = "west-subnet"
  }
}

resource "aws_instance" "west" {
  ami           = var.west_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.west.id

  iam_instance_profile = "ec2-admin"

  tags = {
    Name = "west-ec2"
  }
}


# =========================
# US-EAST-1
# =========================

resource "aws_vpc" "east" {
  provider   = aws.east
  cidr_block = var.east_vpc_cidr

  tags = {
    Name = "east-vpc"
  }
}

resource "aws_subnet" "east" {
  provider          = aws.east
  vpc_id            = aws_vpc.east.id
  cidr_block        = var.east_subnet_cidr
  availability_zone = var.east_az

  tags = {
    Name = "east-subnet"
  }
}

resource "aws_instance" "east" {
  provider      = aws.east
  ami           = var.east_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.east.id

  iam_instance_profile = "ec2-admin"

  tags = {
    Name = "east-ec2"
  }
}