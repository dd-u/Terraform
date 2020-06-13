module "elb" {
  source              = "/var/lib/jenkins/workspace/CloudOps-Terraform/Management/ELB/elb
  Subnets              = "subnetid"
  Secgroup            = "secgroup"
  Instanceport        = "insport"
  Instanceprotocol    = "insprotocol"
  Lbport              = "lbport"
  Lbprotocol          = "lbprotocol"
  #healthcheckprotocol = "hcprotocol"
  #healthcheckpath     = "hcpath"
  Instance            = "instanceid" 
  Name                = "name"
  Farm                = "farm"
 }
