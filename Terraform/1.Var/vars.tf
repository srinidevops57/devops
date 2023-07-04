variable "sample_string" {
  default = "Hello World"
}

##Shell scripting equivallent sample_string="Hello World"
## To print in shell script we use echo , following is the syntax in shell
## echo $sample_string
output "sample_string" {
  value = var.sample_string
}

## in above case we are printing just varaible, if varaible is combination of some strings then following
##is the syntax. ${} is mandatory if we include varaible inside the string
output "sample_string1" {
        value= "value of sample_string = ${var.sample_string}"
}