# @label "Image Name"
# @group "Basic"
variable "image" {
  type        = string
  description = "Docker image name"
  default = "nginx"
}
# @label "Ports"
# @group "Basic"
variable "ports" {
  type        = list(number)
  description = "Service ports to expose"
  default = [80]
}
# @label "Environment Variables"
# @group "Basic"
variable "env" {
  type        = map(string)
  description = "Name and value pairs to set as the environment variables"
  default     = {}
}
# @group "Resources"
# @label "CPU"
# @options ["0.2","0.5","1"]
variable "cpu" {
  type        = string
  description = "CPU"
  default = "0.2"
}
# @group "Resources"
# @label "Memory"
# @options ["1Gi","2Gi","4Gi"]
variable "memory" {
  type        = string
  description = "Memory"
  default = "100Mi"
}
# @label "Namespace"
# @group "Advanced"
variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default = ""
}
# @label "Deployment Name"
# @group "Advanced"
variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default = ""
}

variable "test_module" {
  type        = string
  description = "Test module output"
  default = "Testing"
}

