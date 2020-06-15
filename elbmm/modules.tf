module "elb" {
  source              = "/var/lib/jenkins/workspace/CloudOps-Terraform/Management/ELB/elb"
  Instanceport        = "insport"
  Instanceprotocol    = "insprotocol"
  Lbport              = "lbport"
  Lbprotocol          = "lbprotocol"
  #healthcheckprotocol = "hcprotocol"
  #healthcheckpath     = "hcpath"
  Name                = "name"
  Environment         = "tt"
 
