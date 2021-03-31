resource "aws_s3_bucket" "todobucket" {
  bucket = var.bucket_todo
  acl    = "public-read"
  policy = file("${path.module}/policy.json")

  versioning {
    enabled = true
  }

  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}