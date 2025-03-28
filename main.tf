provider "aws" {
    region = "us-east-1"
}

resource aws_secretsmanager_secret "test1_secret"{
    name = "test"

}
resource aws_secretsmanager_secret_version "test1_secret_value" {
  secret_id     = aws_secretsmanager_secret.test_secret.id
  secret_string = "abbajabbadabba"
}

output "secret_arn" {
  value = aws_secretsmanager_secret.test_secret.arn
}