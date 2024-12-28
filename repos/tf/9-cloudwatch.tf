data "aws_instances" "all" {
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${local.env}-ec2-eks-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 4

        properties = {
          metrics = [
            for instance in data.aws_instances.all.ids : [
              "AWS/EC2",
              "CPUUtilization",
              "InstanceId",
              instance
            ]
          ]
          period = 300
          stat   = "Average"
          region = local.region
          title  = "EC2 Instances CPU Utilization"
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 4

        properties = {
          metrics = [
            for instance in data.aws_instances.all.ids : [
              "AWS/EC2",
              "NetworkIn",
              "InstanceId",
              instance
            ]
          ]
          period = 300
          stat   = "Average"
          region = local.region
          title  = "EC2 Instances Network In"
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 4

        properties = {
          metrics = [
            for instance in data.aws_instances.all.ids : [
              "AWS/EC2",
              "NetworkOut",
              "InstanceId",
              instance
            ]
          ]
          period = 300
          stat   = "Average"
          region = local.region
          title  = "EC2 Instances Network Out"
        }
      },
    ]
  })
}
