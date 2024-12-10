resource "tls_private_key" "MyLinuxBox-Tokyo" {
  #Tokyo is the default region
  /*provider =  aws.tokyo*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-Tokyo" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-Tokyo" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-Tokyo" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-ny" {
  #New York is the default region
  /*provider =  aws.newyork*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-ny" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-ny" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-ny" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-London" {
  #London is the default region
  /*provider =  aws.london*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-London" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-London" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-London" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-saopaulo" {
  #saopaulo is the default region
  /*provider =  aws.saopaulo*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-saopaulo" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-saopaulo" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-saopaulo" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-Sydney" {
  #Sydney is the default region
  /*provider =  aws.sydney*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-Sydney" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-Sydney" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-Sydney" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-Hongkong" {
  #Hongkong is the default region
  /*provider =  aws.hongkong*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBoxHongkong" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_keyHongkong" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_keyHongkong" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}

resource "tls_private_key" "MyLinuxBox-California" {
  #California is the default region
  /*provider =  aws.california*/
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "MyLinuxBox-California" {
  private_key_pem = tls_private_key.MyLinuxBox.private_key_pem
}

output "private_key-California" {
  value     = tls_private_key.MyLinuxBox.private_key_pem
  sensitive = true
}

output "public_key-California" {
  value = data.tls_public_key.MyLinuxBox.public_key_openssh
}
