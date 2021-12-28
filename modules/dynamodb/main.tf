terraform {
  required_version = ">= 0.12.0"
}

resource "aws_dynamodb_table" "dynamodb_table" {

  for_each = var.infra_component
  name = join("-", list("terraform-state-lock",var.environment,each.value))

  hash_key          = "LockID"
  read_capacity     = 2
  write_capacity    = 2

  attribute {
    name = "LockID"
    type = "S"
  }
}
