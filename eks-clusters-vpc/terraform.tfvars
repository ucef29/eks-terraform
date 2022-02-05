aws_region           = "us-west-2"
clusters_name_prefix = "ucef"
vpc_block            = "10.0.0.0/16"
public_subnets_prefix_list = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24",
]
private_subnets_prefix_list = [
  "10.0.101.0/24",
  "10.0.103.0/24",
  "10.0.104.0/24",
]
