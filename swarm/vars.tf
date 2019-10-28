variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "SWARM_AMI_ID" {
  default = "ami-02e60be79e78fef21"
}

variable "SUBNETID" {
  default = "subnet-588a5131"
}

variable "VPCID" {
  default = "vpc-2000df49"
}

variable "SWARM_PRIV_KEY" {
  default = "${{secrets.swarmLaunchKey}}"
}

variable "SWARM_PUB_KEY" {
  default = "${{secrets.swarmLaunchKeyPub}}"
}

