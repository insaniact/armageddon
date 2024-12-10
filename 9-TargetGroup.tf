#Tokyo TG
resource "aws_lb_target_group" "app1_tg_80-Tokyo" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-A-Tokyo.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#No need for a port 443 targeting group
/*resource "aws_lb_target_group" "app2_tg_443" {
  name     = "app2tg443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-A-Tokyo.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app2_tg_443"
    Service = "App2"
    Owner   = "Chewbacca"
    Project = "App2"
  }
}
*/

#New York TG
resource "aws_lb_target_group" "app1_tg_80-ny" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-B-NY.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#London TG
resource "aws_lb_target_group" "app1_tg_80-London" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-C-London.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#Sao Paulo TG
resource "aws_lb_target_group" "app1_tg_80-saopaulo" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-D-SaoPaulo.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#Sydney TG
resource "aws_lb_target_group" "app1_tg_80-sydney" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-E-Sydney.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#Hong Kong TG
resource "aws_lb_target_group" "app1_tg_80-hongkong" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-F-HongKong.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}

#California TG
resource "aws_lb_target_group" "app1_tg_80-california" {
  name     = "app1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1-vpc-G-California.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "Darknesses"
    Project = "App1"
  }
}