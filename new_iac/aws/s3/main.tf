# aws/s3/main.tf

# create s3 bucket
resource "aws_s3_bucket" "media" {
  bucket = var.bucket_name
}

# enable public access later
# resource "aws_s3_bucket_public_access_block" "media" {
#  bucket = aws_s3_bucket.media.id
#
#  block_public_acls       = false
#  block_public_policy     = false
#  ignore_public_acls      = false
#  restrict_public_buckets = false
#}

# IAM user for backend (after testing - created manually)
#resource "aws_iam_user" "api" {
#  name = "fastapi-media-user"
#}

# resource policy 
resource "aws_iam_user_policy" "s3_access" {
  name = "s3-media-access"
  user = "fastapi-media-user" #aws_iam_user.api.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = [
        "s3:PutObject",
        "s3:GetObject",
        "s3:DeleteObject"
      ]
      Resource = "${aws_s3_bucket.media.arn}/*"
    }]
  })
}
