## IAC DE PROYECTO WEB SHOP

## Descripción
Este proyecto pretende crear la infraestructura del proyecto "web shop", en la nube de azure, mediante la herramienta de terraform.

## Prerrequisitos
- Terraform
- Suscripción en azure
- Azure cli

## Ejecución de comandos
- Para poder visualizar el detalle de los pasos que ejecutara terrafor se debe ejecutar el siguiente comando.
~~~
terraform plan -var-file="variables.tfvars"
~~~
- Para ejecutar la implementacion de la infraestructura con terrafor se debe ejecutar el siguiente comando.
~~~
terraform apply -var-file="variables.tfvars" -auto-approve
~~~

- Para destuir la infraestructura creada por terraform es necesario ejecutar el siguiente comando.
~~~
terraform destroy -var-file="variables.tfvars"
~~~