#Tokyo LB
resource "aws_lb" "app1_alb-Tokyo" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-northeast-1a.id,
    aws_subnet.public-ap-northeast-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-Tokyo" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

data "aws_acm_certificate" "cert" {
  domain   = "madibamaximus.click"
  statuses = ["ISSUED"]
  most_recent = true
}
/*
resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app2_tg_443.arn
  }
}
*/
output "lb_dns_name-Tokyo" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#NY LB
resource "aws_lb" "app1_alb-ny" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-ny" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-ny" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#London LB
resource "aws_lb" "app1_alb-London" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-eu-west-2a.id,
    aws_subnet.public-eu-west-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-London" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-london" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#Sao Paulo LB
resource "aws_lb" "app1_alb-saopaulo" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-sa-east-1a.id,
    aws_subnet.public-sa-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-saopaulo" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-saopaulo" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#Sydney LB
resource "aws_lb" "app1_alb-sydney" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-southeast-2a.id,
    aws_subnet.public-ap-southeast-2c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-sydney" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-sydney" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#Hong Kong LB
resource "aws_lb" "app1_alb-hongkong" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-ap-east-1a.id,
    aws_subnet.public-ap-east-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-hongkong" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-hongkong" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

#California LB
resource "aws_lb" "app1_alb-california" {
  name               = "app1-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false
#Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "App1LoadBalancer"
    Service = "Multiapp"
    Owner   = "Darknesses"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http-california" {
  load_balancer_arn = aws_lb.app1_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app1_tg_80.arn
  }
}

output "lb_dns_name-california" {
  value       = aws_lb.app1_alb.dns_name
  description = "The DNS name of the App1 Load Balancer."
}

