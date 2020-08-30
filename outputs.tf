output "s3_bucket_website_endpoint" {
  description = "DNS record of the S3 website"
  value       = aws_s3_bucket.s3_bucket.website_endpoint
}
