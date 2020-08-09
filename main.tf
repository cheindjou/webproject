
provider "aws" {
  region = "us-east-2"
 

 

 shared_credentials_file = "/home/ubuntu/.aws/credentials"
  profile = chejuro


}

# resource "aws_key_pair" "deployer" {
#   key_name   = "chejurokeypair"
#   private_key = "-----BEGIN RSA PRIVATE KEY-----MIIEpAIBAAKCAQEA089LWxcRltL5CGhW7hmrmBB/sKza9CEJypVxukDXshmdHBgE0S8NZwikHEXFEPjqw9Tr5HM4tN71oX+sQjdGjFUga79I/avO4BsGvljrS6kVd5p0EWqHJzLpC5WqsQ95OVOFVfbSqDaO4rtvNm+ZjPa0llk8hJQNnguj2DMe7BAyRCK2Lf7We8xw4I90OMqYrgz7qVyhUUbWruAaKZ32pfOqPIAaPWMZxTzeIlMBDMw+jH1v64v7zy2R3CBlZbIoVAhiBGBSILbqyZ1W3xUPkHfa6nWSrAv6v3tzfM+6PT2yn0bVqS/ZM03Xteu13m50aWHgrdvuz7nWzO3FeG8xlwIDAQABAoIBAE6EG2UK6iRE1Lf/JaphrbBS/WKa0ReKX7zPJTdr7glBYXIWnUKF9KvrEhrA6kpeW3h4p3EqHS0/MULKtypcnzRKIhiO8hnG5ItCuX86Kw8DAMgzYy9JlAw93RHES2ATYlaT1WuGcZSVlOYLoTBGsl8E3PCW584lq96YZgYw/Rd4RJwdm2EPeTS063zb7/KkEXKN8Ml+lWdbwlyadNwqJX6NtGY0lAe0OnkSGqBgX12iv9XifPM0xkVAV/1uFnhV4/mYe2j0CYE/lB4xTPe4J0qNSHkqFwc9/x7Q1ClCyKXGGJ2XWLWfdAv6AeaVQXgtUiaIo/m8juVJDG4n1/2SReECgYEA9rglfBGOejBMMVl0nLVnvwsotMBAl9a6MqN4yxPO0jqxz0Br1El0zvw6V1Y7dx3rQ8AtbJzt9TtBWiU9jawmmK47AWiNeutYEuwaWzkzK0flPn32vC7zDOrIHHqxkkpJvnuP2JjsCFGpE3Ijzq9PyTDvoRiNDKJ6DWojrdX28q8CgYEA28b57GvHJS51RBUSvZBIsecugrpUTFnOsXyW8cdmINmStfTh2+ZQRMlBtoxp0abdIOUy658wxw6YQx5SepbUoBzfQnTBjd/bbNkXjPi3j+mEhaMINCdaUkmgRxMSxsP9WV3nWlT9QoDt20sv6I9XNcUoJIoyJsHJmaNRlT+wCZkCgYEA2b5L1uPnyw81L5izwlqX5ZQDqQLD/z4Ttv1vbktdDU2gADnq8MCjxsn083+3m7lcGb9SV7loijZxxw129cIpjja2/Nc5hnKOmKSn3jrtXhVlzXF+gTcuawgK9JeUgHfv/Z0vpwnPxsfLYM4rrA4tbHM0CgmQ8sWy0oQKWTGtcSECgYB32aNTDVdVbGdgkEle/L7X3WVcvvXXiSYRXgsGoKGOCnhaJ8e/XnKpgEMIpLvUK7XtCXBiU7aK5uebun5qAbTD99q8Z+VhVBFZ421XYA7iOQsewVBo+Ijl1ObFu54CrMCNKotOlIhj6uFLNE5U+U4qsXB5tK8yuX0R/qEvzcJXCQKBgQCqpav20YDBvNFucaSOmlv14KnspRaCcjBmeYSYhRrv/XG1kkShDkJKOmdegnCrMPgqGzVWGwwRG0OOutoYA8LH52OBS/1Xu+YDakkMEYSoTtgVRzx/aMCPsUOAGfQGgRFO/VdHHEUaQ1b3JNDgEQ8xjnY5/aOzbal4ntFTkdZtDg==-----END RSA PRIVATE KEY----"
# }

resource "aws_instance" "Jenkins" {
  ami           = "ami-07b11e59bc74961b5" # us-east-2
  instance_type = "t2.micro"
  key_name ="chejurokeypair"

tags = {
    Name = "jenkins-master"
  }
   }
