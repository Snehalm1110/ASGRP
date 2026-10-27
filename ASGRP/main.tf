resource "aws_autoscaling_group" "ASG1" {
    name = var.name
    min_size = var.min_size
    max_size = var.max_size
    desired_capacity = var.desired_capacity
    vpc_zone_identifier = var.vpc_zone_identifier
    launch_template {
      id = var.launch_template_id
      version = "$Latest"
    }
    target_group_arns = [var.target_group_arn]
    health_check_type = "ELB"
}