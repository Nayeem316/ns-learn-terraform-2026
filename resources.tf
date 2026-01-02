resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"    
    tags = merge(
    local.common_tags,
    {
      Name = "${var.name_prefix}-vpc"
    }
  )  
}

resource "aws_subnet" "development-subnet-1" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-2a"
        tags = merge(
    local.common_tags,
    {
      Name = "${var.name_prefix}-subnet-1"
    }
  )                  
}

resource "aws_subnet" "development-subnet-2" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-2b"
        tags = merge(
    local.common_tags,
    {
      Name = "${var.name_prefix}-subnet-2"
    }
  )                            
}