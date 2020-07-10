

provider "aws" {
  
    
    region     = "us-east-2"
 

  #shared_credentials_file = "/Users/chejuro/.aws/creds"
 #profile                 = "chejuro"
  }

resource "aws_instance" "Jenkins" {
  ami           = "ami-07b11e59bc74961b5" # us-east-2
  instance_type = "t2.micro"
  key_name ="chejurokeypair"

tags = {
    Name = "jenkins-master"
  }
   }
