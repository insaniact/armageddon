#Tokyo ASG
resource "aws_autoscaling_group" "app1_asg_80-Tokyo" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-tokyo" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-tokyo" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

/*
resource "aws_autoscaling_group" "app2_asg_443" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1d.id,
    aws_subnet.private-ap-northeast-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app2_tg_443.arn]

  launch_template {
    id      = aws_launch_template.app2_LT_443.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app2_443"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app2_scaling_policy_443" {
  name                   = "app2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app2_asg_443.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app2_asg_443_attachment" {
  autoscaling_group_name = aws_autoscaling_group.app2_asg_443.name
  alb_target_group_arn   = aws_lb_target_group.app2_tg_443.arn
}
*/

#New York ASG
resource "aws_autoscaling_group" "app1_asg_80-ny" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-ny" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-ny" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

#London ASG
resource "aws_autoscaling_group" "app1_asg_80-London" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-London" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-London" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

#Sao Paulo ASG
resource "aws_autoscaling_group" "app1_asg_80-saopaulo" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-saopaulo" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-saopaulo" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

#Sydney ASG
resource "aws_autoscaling_group" "app1_asg_80-Sydney" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-Sydney" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachmentSydney" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

#Hong Kong ASG
resource "aws_autoscaling_group" "app1_asg_80-hongkong" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-hongkong" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-hongkong" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}

#California ASG
resource "aws_autoscaling_group" "app1_asg_80-California" {
  name_prefix           = "app1-auto-scaling-group-"
  min_size              = 2
  max_size              = 6
  desired_capacity      = 4
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-2b.id,
    aws_subnet.private-us-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.app1_tg_80.arn]

  launch_template {
    id      = aws_launch_template.app1_LT_80.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }

  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }

  tag {
    key                 = "Name"
    value               = "app1-instance-80"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}


# Auto Scaling Policy
resource "aws_autoscaling_policy" "app1_scaling_policy_80-California" {
  name                   = "app1-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name

  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}

# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "app1_asg_80_attachment-California" {
  autoscaling_group_name = aws_autoscaling_group.app1_asg_80.name
  alb_target_group_arn   = aws_lb_target_group.app1_tg_80.arn
}



