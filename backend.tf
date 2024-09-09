terraform {
  backend "s3" {
    bucket         = "awscloudops.shop2" 
    key            = "awscloudops.shop/terraform.tfstate"    # Path to store the state file in S3
    region         = "us-east-1"                 # Replace with your region
    #dynamodb_table = "terraform-state-lock"
    encrypt        = true                        # Enable encryption of the state file
  }
}
