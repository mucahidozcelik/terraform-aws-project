terraform {
  backend "s3" {
    bucket         = "tf-state-bucket-123"   
    key            = "terraform.tfstate"        
    region         = "eu-west-1"
    dynamodb_table = "tf-locks"                  
    encrypt        = true              
  }
}
