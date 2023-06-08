variable "zone_name" {
  type        = string
  description = "The name of the Route 53 DNS zone to be created."
}

variable "ns_records_ttl" {
  type        = number
  default     = 86400
  description = "The TTL value (in seconds) for the NS records."
}

variable "ns_records" {
  type        = list(string)
  description = "List of strings representing the values of the NS records."
}

variable "soa_records_ttl" {
  type        = number
  default     = 86400
  description = "The TTL value (in seconds) for the SOA records."
}

variable "soa_records" {
  type        = list(string)
  description = "List of strings representing the values of the SOA records."
}

variable "mx_records_ttl" {
  type        = number
  default     = 86400
  description = "The TTL value (in seconds) for the MX records."
}

variable "mx_records" {
  type        = list(string)
  description = "List of strings representing the values of the MX records."
}

variable "a_records" {
  type = list(object({
    name    = string
    ttl     = number
    records = list(string)
  }))
  default     = []
  description = "List of objects representing the A records."
}

variable "cname_records" {
  type = list(object({
    name    = string
    ttl     = number
    records = list(string)
  }))
  default     = []
  description = "List of objects representing the CNAME records."
}
