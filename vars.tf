variable "region" {
  default = "eu-west-1"
}

variable "appname" {
  default = "artemis"
}

variable "amis" {
  type = "map"

  default = {
     eu-west-1 = "ami-0c21ae4a3bd190229"
     us-east-2 = "ami-0b59bfac6be064b78"
   } 
    
}
