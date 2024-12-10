#These are   for  public

resource "aws_subnet" "public-ap-northeast-1a" {
  #Tokyo is the default provider
  #provider = aws.tokyo
  vpc_id                  = aws_vpc.app1-vpc-A-Tokyo.id
  cidr_block              = var.tokyo_cidr_blocks[1].cidr_block
  availability_zone       = var.tokyo_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.tokyo_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  #Tokyo is the default provider
  #provider = aws.tokyo
  vpc_id                  = aws_vpc.app1-vpc-A-Tokyo.id
  cidr_block              = var.tokyo_cidr_blocks[3].cidr_block
  availability_zone       = var.tokyo_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.tokyo_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  #Tokyo is the default provider
  #provider = aws.tokyo
  vpc_id            = aws_vpc.app1-vpc-A-Tokyo.id
  cidr_block        = var.tokyo_cidr_blocks[5].cidr_block
  availability_zone = var.tokyo_cidr_blocks[5].availability_zone

  tags = {
    Name    = var.tokyo_cidr_blocks[5].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}
resource "aws_subnet" "private-ap-northeast-1c" {
  #Tokyo is the default provider
  #provider = aws.tokyo
  vpc_id            = aws_vpc.app1-vpc-A-Tokyo.id
  cidr_block        = var.tokyo_cidr_blocks[7].cidr_block
  availability_zone = var.tokyo_cidr_blocks[7].availability_zone

  tags = {
    Name    = var.tokyo_cidr_blocks[7].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public
resource "aws_subnet" "public-us-east-1a" {
  #NY is the default provider
  #provider = aws.NY
  vpc_id                  = aws_vpc.app1-vpc-B-NY.id
  cidr_block              = var.NY_cidr_blocks[1].cidr_block
  availability_zone       = var.NY_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.NY_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-us-east-1c" {
  #NY is the default provider
  #provider = aws.NY
  vpc_id                  = aws_vpc.app1-vpc-B-NY.id
  cidr_block              = var.NY_cidr_blocks[3].cidr_block
  availability_zone       = var.NY_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.NY_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-us-east-1a" {
  #NY is the default provider
  #provider = aws.NY
  vpc_id            = aws_vpc.app1-vpc-B-NY.id
  cidr_block        = var.NY_cidr_blocks[4].cidr_block
  availability_zone = var.NY_cidr_blocks[4].availability_zone

  tags = {
    Name    = var.NY_cidr_blocks[4].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-us-east-1c" {
  #NY is the default provider
  #provider = aws.NY
  vpc_id            = aws_vpc.app1-vpc-B-NY.id
  cidr_block        = var.NY_cidr_blocks[6].cidr_block
  availability_zone = var.NY_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.NY_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public

resource "aws_subnet" "public-eu-west-2a" {
  #London is the default provider
  #provider = aws.London
  vpc_id                  = aws_vpc.app1-vpc-C-London.id
  cidr_block              = var.London_cidr_blocks[1].cidr_block
  availability_zone       = var.London_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.London_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-eu-west-2c" {
  #London is the default provider
  #provider = aws.London
  vpc_id                  = aws_vpc.app1-vpc-C-London.id
  cidr_block              = var.London_cidr_blocks[3].cidr_block
  availability_zone       = var.London_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.London_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-eu-west-2a" {
  #London is the default provider
  #provider = aws.London
  vpc_id            = aws_vpc.app1-vpc-C-London.id
  cidr_block        = var.London_cidr_blocks[4].cidr_block
  availability_zone = var.London_cidr_blocks[4].availability_zone

  tags = {
    Name    = var.London_cidr_blocks[4].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-eu-west-2c" {
  #London is the default provider
  #provider = aws.London
  vpc_id            = aws_vpc.app1-vpc-C-London.id
  cidr_block        = var.London_cidr_blocks[6].cidr_block
  availability_zone = var.London_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.London_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public

resource "aws_subnet" "public-sa-east-1a" {
  #saopaulo is the default provider
  #provider = aws.saopaulo
  vpc_id                  = aws_vpc.app1-vpc-D-sao-paulo.id
  cidr_block              = var.saopaulo_cidr_blocks[1].cidr_block
  availability_zone       = var.saopaulo_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.saopaulo_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-sa-east-1c" {
  #saopaulo is the default provider
  #provider = aws.saopaulo
  vpc_id                  = aws_vpc.app1-vpc-D-sao-paulo.id
  cidr_block              = var.saopaulo_cidr_blocks[3].cidr_block
  availability_zone       = var.saopaulo_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.saopaulo_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-sa-east-1a" {
  #saopaulo is the default provider
  #provider = aws.saopaulo
  vpc_id            = aws_vpc.app1-vpc-D-sao-paulo.id
  cidr_block        = var.saopaulo_cidr_blocks[4].cidr_block
  availability_zone = var.saopaulo_cidr_blocks[4].availability_zone

  tags = {
    Name    = var.saopaulo_cidr_blocks[4].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-sa-east-1c" {
  #saopaulo is the default provider
  #provider = aws.saopaulo
  vpc_id            = aws_vpc.app1-vpc-D-sao-paulo.id
  cidr_block        = var.saopaulo_cidr_blocks[6].cidr_block
  availability_zone = var.saopaulo_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.saopaulo_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public

resource "aws_subnet" "public-ap-southeast-2a" {
  #Sydney is the default provider
  #provider = aws.Sydney
  vpc_id                  = aws_vpc.app1-vpc-E-Sydney.id
  cidr_block              = var.Sydney_cidr_blocks[1].cidr_block
  availability_zone       = var.Sydney_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.Sydney_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-ap-southeast-2c" {
  #Sydney is the default provider
  #provider = aws.Sydney
  vpc_id                  = aws_vpc.app1-vpc-E-Sydney.id
  cidr_block              = var.Sydney_cidr_blocks[3].cidr_block
  availability_zone       = var.Sydney_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.Sydney_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-ap-southeast-2a" {
  #Sydney is the default provider
  #provider = aws.Sydney
  vpc_id            = aws_vpc.app1-vpc-E-Sydney.id
  cidr_block        = var.Sydney_cidr_blocks[4].cidr_block
  availability_zone = var.Sydney_cidr_blocks[4].availability_zone

  tags = {
    Name    = var.Sydney_cidr_blocks[4].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-ap-southeast-2c" {
  #Sydney is the default provider
  #provider = aws.Sydney
  vpc_id            = aws_vpc.app1-vpc-E-Sydney.id
  cidr_block        = var.Sydney_cidr_blocks[6].cidr_block
  availability_zone = var.Sydney_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.Sydney_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public

resource "aws_subnet" "public-ap-east-1a" {
  #hongkong is the default provider
  #provider = aws.hongkong
  vpc_id                  = aws_vpc.app1-vpc-F-Hong-Kong.id
  cidr_block              = var.hongkong_cidr_blocks[1].cidr_block
  availability_zone       = var.hongkong_cidr_blocks[1].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.hongkong_cidr_blocks[1].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-ap-east-1c" {
  #hongkong is the default provider
  #provider = aws.hongkong
  vpc_id                  = aws_vpc.app1-vpc-F-Hong-Kong.id
  cidr_block              = var.hongkong_cidr_blocks[3].cidr_block
  availability_zone       = var.hongkong_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.hongkong_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-ap-east-1a" {
  #hongkong is the default provider
  #provider = aws.hongkong
  vpc_id            = aws_vpc.app1-vpc-F-Hong-Kong.id
  cidr_block        = var.hongkong_cidr_blocks[4].cidr_block
  availability_zone = var.hongkong_cidr_blocks[4].availability_zone

  tags = {
    Name    = var.hongkong_cidr_blocks[4].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-ap-east-1c" {
  #hongkong is the default provider
  #provider = aws.hongkong
  vpc_id            = aws_vpc.app1-vpc-F-Hong-Kong.id
  cidr_block        = var.hongkong_cidr_blocks[6].cidr_block
  availability_zone = var.hongkong_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.hongkong_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#These are   for  public

resource "aws_subnet" "public-us-west-2b" {
  #California is the default provider
  #provider = aws.California
  vpc_id                  = aws_vpc.app1-vpc-G-California.id
  cidr_block              = var.California_cidr_blocks[2].cidr_block
  availability_zone       = var.California_cidr_blocks[2].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.California_cidr_blocks[2].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "public-us-west-2c" {
  #California is the default provider
  #provider = aws.California
  vpc_id                  = aws_vpc.app1-vpc-G-California.id
  cidr_block              = var.California_cidr_blocks[3].cidr_block
  availability_zone       = var.California_cidr_blocks[3].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name    = var.California_cidr_blocks[3].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

#these are for private
resource "aws_subnet" "private-us-west-2b" {
  #California is the default provider
  #provider = aws.California
  vpc_id            = aws_vpc.app1-vpc-G-California.id
  cidr_block        = var.California_cidr_blocks[5].cidr_block
  availability_zone = var.California_cidr_blocks[5].availability_zone

  tags = {
    Name    = var.California_cidr_blocks[5].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

resource "aws_subnet" "private-us-west-2c" {
  #California is the default provider
  #provider = aws.California
  vpc_id            = aws_vpc.app1-vpc-G-California.id
  cidr_block        = var.California_cidr_blocks[6].cidr_block
  availability_zone = var.California_cidr_blocks[6].availability_zone

  tags = {
    Name    = var.California_cidr_blocks[6].name
    Service = "application1"
    Owner   = "Mighty"
    Planet  = "Maximus"
  }
}

