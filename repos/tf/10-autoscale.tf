# ## AUTO SCALE 

# data "tls_certificate" "eks" {
#   url = aws_eks_cluster.eks.identity[0].oidc[0].issuer
# }

# resource "aws_iam_openid_connect_provider" "eks" {
#   client_id_list  = ["sts.amazonaws.com"]
#   thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
#   url             = aws_eks_cluster.eks.identity[0].oidc[0].issuer
# }

# data "aws_iam_policy_document" "eks_cluster_autoscaler_assume_role_policy" {
#   statement {
#     effect = "Allow"
#     actions = ["sts:AssumeRoleWithWebIdentity"]
#     condition {
#       test     = "StringEquals"
#       variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
#       values   = ["system:serviceaccount:kube-system:cluster-autoscaler"]
#     }
#     principals {
#       identifiers = [aws_iam_openid_connect_provider.eks.arn]
#       type        = "Federated"
#     }
#   }
# }

# resource "aws_iam_role" "eks_cluster_autoscaler" {
#   assume_role_policy = data.aws_iam_policy_document.eks_cluster_autoscaler_assume_role_policy.json
#   name               = "eks-cluster-autoscaler"
# }

# resource "aws_iam_policy" "eks_cluster_autoscaler" {
#   name = "eks-cluster-autoscaler"
#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [{
#       Action = [
#         "autoscaling:DescribeAutoScalingGroups",
#         "autoscaling:DescribeAutoScalingInstances",
#         "autoscaling:DescribeLaunchConfigurations",
#         "autoscaling:DescribeTags",
#         "autoscaling:SetDesiredCapacity",
#         "autoscaling:TerminateInstanceInAutoScalingGroup",
#         "ec2:DescribeLaunchTemplateVersions"
#       ],
#       Effect   = "Allow",
#       Resource = "*"
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "eks_cluster_autoscaler" {
#   policy_arn = aws_iam_policy.eks_cluster_autoscaler.arn
#   role       = aws_iam_role.eks_cluster_autoscaler.name
# }