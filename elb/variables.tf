variable "vpc_cidr" {
type = list(string)
}
variable "Subnets" {
type = list(string)
}
variable "Secgroup" {
type = list(string) 
}
variable "Instanceport" {
type = list(string) 
}
variable "Instanceprotocol" {
type = list(string)
}
variable "Lbport" {
type = list(string)    
}
variable "Lbprotocol" {
type = list(string) 
}
variable "Name" {
type = list(string) 
}
variable "Farm" {
type = list(string) 
}
