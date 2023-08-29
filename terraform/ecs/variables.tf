variable "availability_zones" {
  type        = list(string)
  description = "AWS Availability Zones"
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
    "us-east-1e",
  ]
}

variable "key_pair" {
  description = "AWS EC2 Key Pair Pem"
  default     = "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAsEmcIQU4yhhG4Oe0vS4Lj5mZPlTg2eJBOjn/ogYJFnoOULWu
wUrcgKzHhvZ+NfYvU0f5nvZIuCAzRTZdtS6eCxUhTaxwe+vhjWBqCN4JphmhLxmw
NO//ZFegQNaxMyNGx47/lsox/GU6o8HG+1pxhORE1IoacaxcaUH5qfqsVkAuf/s7
4GdiTGhYS0kJOnZ6o8EjK5hw9TABqeCuK3VrmI6v6I1Vsb+tewzJtq5otgTK96A9
yeIHp5ZQGBEVmun5An3iTKO5rnAjun6siKyHFcDOhShIjsXiwRW7M4SVIwcFw72j
gizOLRR2sORn4jWJU6Z/E1xq2UEbK93MIbQV2QIDAQABAoIBAGPez9zFII8dgcoY
eoRSeao40mBFpbzKOTnLcc9QrAVX0JRY2VAYISOkvsTvEEFx3w3HUNuFm1z0oRcs
3Zmvd0nABsYCUxdhYr69SFUNtVmsW2xbmT/kV0N5gQg6mNjnu0mC8blzgy4CC16K
gTgU3Qr0ZyohsymDBDd9cPujT87sSutoVySRuF7/REfBXlWysxEtBjAs/ahqXDIa
iLuGwXwzW2H3ZyXN/QwRlveJoUfbucwRZIhpaV19Ct8QmPbj8DyfcAcivnAanaQS
FhyVSPHDkQecuJwszwcq2CAkXsES/LVuuBmpW1PjWWWSWs+zFxVUxGwZ0P1Lxt4w
XZS5sSECgYEA8AijjFArs1/WhpqqHIVEJufPH1Vp5R3vAOc5HCvmN4v3ucvhx6YO
5x5y2g59+f5a6vsX1iC9mlEzml+cfbEzJUSAw2YiMumVp/qXGd4jZeigxcrPzW70
YGKKO1klvqX16CFcPMG+QzT57UeszLdscuGC2UTMWHu0JgBqME3EvisCgYEAvAN7
ogPmGGLWFdHmGEqCTfiC0NUcok8eHBbWmkklpYyVeZP2kMSNnjDQMXSqRsVdML4t
8AFNkImV5XYSyykdboTKHszINCyMSASi8CwjtNj5ZwfOd8DZimU02NyLvwH94Ukp
inAbqEdEpJlKlCXHxbAc9g85GokKFpVddp1UvgsCgYBBxqxCnAmNqvqXgjSRgjdt
zeIlPPu6zFwdTD+LJ8B7gkCNSoCBfFDjJqXkeUouQnRZphsfE3PBoPTaHc89ZlyU
ntQGN6uxde8LzBCyBvx+RaQg73XIXtpau0YUA1bjioj7ZoDnKVRhCFhgnF6O7siq
Jn/71+2DZcq1CzIOMJF0ZwKBgGwxEOcVmUY1Mf8Sb3dRART/ScAEstqP7sK5PbtB
FoHimW2CAOQjx17dtiCPgyEAl/Thq6uuBEWFdxW5UW1Jdp9PmMQKkba8X+ldiant
rIp4RWTNsDlnZ4flX3jfySccbU1D/bylcLTwdgbGE42XBBO1maTa88BaVczTHRqR
xN8rAoGAHjC7u5VUcZk2skXcU2Y4Znr7R9OrXrTSkpnR0pQ/KzMYdugJgxauv0qn
Iy11v7te1e99WWm8RnFL+zZ6xWM3eViW6UNCRvzmiVaN3/sJTVux8na/Iy49eULn
/XoalWeMnUfda6LatiUEa+is4dPBLRL5Azta4gFjWl4xczQ5jwM=
-----END RSA PRIVATE KEY-----"
}

variable "ami" {
  description = "Amazon Linux 2 AMI x86"
  default     = "ami-01cc34ab2709337aa"
}

variable "instance_type" {
  description = "AWS Instance Type"
  default     = "t3.medium"
}

variable "iam_profile" {
  description = "Name of AWS IAM Profile"
  default     = "ec2ECSRole"
}

variable "asg_min" {
  description = "Min Instances"
  default     = 3
}

variable "asg_max" {
  description = "Max Instances"
  default     = 5
}

variable "asg_desired" {
  description = "AWS Desired capacity for ASG"
  default     = 3
}

variable "docker_img_name" {
  type        = string
  description = "Name of the docker image being deployed"
  default     = "ariv3ra/aws-demo-coderi2021"
}

variable "docker_img_tag" {
  type        = string
  description = "The docker image TAG being deployed"
  default     = "latest"
}

variable "ecs_desired_count" {
  description = "Number of desired ECS Tasks to deploy"
  default     = 3
}

