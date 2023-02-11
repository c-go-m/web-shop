variable "name" {    
    type = string
    description = "name proyect"    
}

variable "location" {    
    type = string
    description = "proyect location area"          
}

variable "tags" {
    description = "tags proyect"
    type = map(string)
    default = {}
}

variable "tenant-id" {    
    type = string
    description = "account tenant id"          
}

variable "object-id" {    
    type = string
    description = "account object id"          
}

variable "secret-sa" {    
    type = string
    description = "secret connection string storage account"          
}

