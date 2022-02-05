aws_region = "us-west-2"
private_subnet_ids = [
  "subnet-087478b37780b4558",
  "subnet-070b699eeea88fd00",
  "subnet-0dba10238854e4f3a",
]
public_subnet_ids = [
  "subnet-07d4f73f6c8dec6cf",
  "subnet-05296b4e04b42411b",
  "subnet-0cc3ccaea24efffdc",
]
vpc_id = "vpc-07ce0ffca448b4bbb"
clusters_name_prefix  = "ucefclusters"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
