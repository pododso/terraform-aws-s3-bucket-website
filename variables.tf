## General

variable "tags" {
  type        = map(string)
  description = "Mapping of tags to apply to all resources in this module"
  default     = {}
}

## S3 Bucket

variable "bucket" {
  type        = string
  description = "Bucket name"
}

variable "index_document" {
  type        = string
  description = "Path to the index document in S3 website configuration"
}

variable "error_document" {
  type        = string
  description = "Path to the error document in S3 website configuration"
}
