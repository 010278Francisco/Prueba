terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}



provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "prueba" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  security_groups= ["launch-wizard-1"]
  key_name= "name"
  

  tags = {
    Name = "prueba"
  }
}
 


output "instance_public_ip" {
  description = "Obtener la IP publica de mi instancia"
  value = aws_instance.prueba.public_ip 
}
