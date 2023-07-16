## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.cname](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.mx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.ns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.soa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.txt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | List of objects representing the A records. | <pre>list(object({<br>    name    = string<br>    ttl     = number<br>    records = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | List of objects representing the CNAME records. | <pre>list(object({<br>    name    = string<br>    ttl     = number<br>    records = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_mx_records"></a> [mx\_records](#input\_mx\_records) | List of strings representing the values of the MX records. | `list(string)` | n/a | yes |
| <a name="input_mx_records_ttl"></a> [mx\_records\_ttl](#input\_mx\_records\_ttl) | The TTL value (in seconds) for the MX records. | `number` | `86400` | no |
| <a name="input_ns_records"></a> [ns\_records](#input\_ns\_records) | List of strings representing the values of the NS records. | `list(string)` | n/a | yes |
| <a name="input_ns_records_ttl"></a> [ns\_records\_ttl](#input\_ns\_records\_ttl) | The TTL value (in seconds) for the NS records. | `number` | `86400` | no |
| <a name="input_soa_records"></a> [soa\_records](#input\_soa\_records) | List of strings representing the values of the SOA records. | `list(string)` | n/a | yes |
| <a name="input_soa_records_ttl"></a> [soa\_records\_ttl](#input\_soa\_records\_ttl) | The TTL value (in seconds) for the SOA records. | `number` | `86400` | no |
| <a name="input_txt_records"></a> [txt\_records](#input\_txt\_records) | List of objects representing the TXT records. | <pre>list(object({<br>    name    = string<br>    ttl     = number<br>    records = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the Route 53 DNS zone to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | The Route 53 Zone ID. |
