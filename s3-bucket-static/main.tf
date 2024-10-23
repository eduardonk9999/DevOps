provider: "aws" {
    region = "us-east-1"
}

variable "bucket_name" {
    type = string
}

//configs da nossa infra
resource "aws_s3_bucket" "static_site_bucket" {
    bucket = "static-site-${var.bucket_name}"

    website {
        index_document = "index.html"
        error_document = "404.html"
    }

    tags = {
        Name = "Static Site Bucket"
        Environment = "Production"
    }
}


