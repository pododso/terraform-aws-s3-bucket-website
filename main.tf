resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket
  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadOnly",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket}/*"
        }
    ]
}
EOT
  tags   = var.tags

  website {
    index_document = var.index_document
    error_document = var.error_document
  }
}
