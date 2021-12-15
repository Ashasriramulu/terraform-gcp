variable "project_id" {
  type = string
  default = ""
}
variable "alert_name" {
  type        = string
  description = "Name of the alert to be displayed"
  default = "Alert1"
}

variable "alert_combiner" {
  type        = string
  description = "Combiner of alert"
  default = "OR"
}

variable "condition_name" {
  type        = string
  description = "Name of alert condition"
  default = "test_condition"
}

variable "condition_filter" {
  type        = string
  description = "Log metric used as a condition filter "
}

variable "condition_threshold" {
  type        = string
  description = "Threshold of the condition"
}

variable "condition_duration" {
  type        = string
  description = "Duration of the condition"
}

variable "condition_comparison" {
  type        = string
  description = "Comparison such as greater than or lower than of the given condition"
}

variable "alignment_period" {
  type        = string
}
 
 variable "per_series_aligner" {
    type        = string
 }

 variable "display_name" {
    type        = string
 }

 variable "type" {
type        = string 
 }

 variable "email_address" {
   type        = string 
 }