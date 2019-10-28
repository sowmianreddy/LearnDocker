# store satefile in s3
terraform {
  required_version = "~> 0.11"
  backend "s3" {
    bucket = "swarmcluster-statefile"
    key    = "swarmcluster/swarmcluster.tfstate"
    region = "ap-south-1"
  }
}