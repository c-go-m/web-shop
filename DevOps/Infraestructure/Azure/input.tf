variable "proyect" {    
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