terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

resource "aws_kms_key" "auth_tokens" {
  description             = "Encrypts auth tokens at rest"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Service     = "auth"
    Environment = "production"
  }
}

resource "aws_dynamodb_table" "user_sessions" {
  name         = "pantalasa-auth-sessions"
  billing_mode = "PAY_PER_REQUEST"

  deletion_protection_enabled = true

  attribute {
    name = "session_token"
    type = "S"
  }

  hash_key = "session_token"

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.auth_tokens.arn
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Service = "auth"
  }
}
