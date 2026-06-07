data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "alb_assume_role" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = [var.oidc_provider_arn]
    }

    condition {
      test     = "StringEquals"
      variable = "${replace(var.oidc_provider, "https://", "")}:sub"

      values = [
        "system:serviceaccount:kube-system:aws-load-balancer-controller"
      ]
    }
  }
}

resource "aws_iam_role" "alb_controller" {
  name               = "alb-controller-irsa-role"
  assume_role_policy = data.aws_iam_policy_document.alb_assume_role.json
}

data "aws_iam_policy" "alb_controller" {
  arn = "arn:aws:iam::561876735341:policy/AWSLoadBalancerControllerIAMPolicy"
}

resource "aws_iam_role_policy_attachment" "alb_controller" {
  role       = aws_iam_role.alb_controller.name
  policy_arn = data.aws_iam_policy.alb_controller.arn
}