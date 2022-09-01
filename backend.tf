terraform {
    backend "s3" {
        bucket = "jass11-bucket"
        key = "new.tfstate"
        region = "us-east-1"
      
    }
}
