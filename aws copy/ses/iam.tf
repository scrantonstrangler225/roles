resource "aws_iam_user" "smtp" {

  name = var.smtp_user_name

}

resource "aws_iam_user_policy" "smtp" {

  user = aws_iam_user.smtp.name

  policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Effect = "Allow"

        Action = [

          "ses:SendEmail",

          "ses:SendRawEmail"

        ]

        Resource = "*"

      }

    ]

  })

}

resource "aws_iam_access_key" "smtp" {

  user = aws_iam_user.smtp.name

}
