variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "frontend_bucket_name" {
  type = string
}

variable "api_lambda_zip" {
  type    = string
  default = "../../backend/api/api_lambda.zip"
}

variable "api_lambda_name" {
  type    = string
  default = "sentinel-api"
}

# Clerk validation happens in Lambda, not at API Gateway level
variable "clerk_jwks_url" {
  description = "Clerk JWKS URL for JWT validation in Lambda"
  type        = string
}

variable "clerk_issuer" {
  description = "Clerk issuer URL (kept for Lambda environment)"
  type        = string
  default     = ""  # Not actually used but kept for backwards compatibility
}

# Clerk validation happens in Lambda, not at API Gateway level
variable "bedrock_model_id" {
  type        = string
  default     = "openai.gpt-oss-120b-1:0"
}

variable "bedrock_region" {
  type        = string
  default     = "eu-west-1"
}

variable "openrouter_api_key" {
  type        = string
  default     = "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"
}

variable "openrouter_model" {
  type        = string
  default     = "openai/gpt-4o-mini"
}

variable "openrouter_base_url" {  
  type        = string
  default     = "https://openrouter.ai/api/v1"
}

variable "resend_api_key" {
  type        = string
  default     = "re_ci7UasjB_8kybAaWDeEs8jf5H4D9d5WtA"
}

variable "resend_from" {
  type        = string
  default     = "Sentinel <onboarding@resend.dev>"
}

variable "reminder_interval_seconds" {
  type        = string
  default     = "60"
}