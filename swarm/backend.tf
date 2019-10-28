# store satefile in s3
terraform {
  
  backend "s3" {
    bucket = "swarmcluster-statefile"
    key    = "swarmcluster/swarmcluster.tfstate"
    region = "ap-south-1"
  }
}

