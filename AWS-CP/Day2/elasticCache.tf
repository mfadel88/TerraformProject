resource "aws_elasticache_subnet_group" "tf-cache-subnet" {
  name       = "tf-cache-subnet"
  subnet_ids = [module.network.PRI-SN1, module.network.PRI-SN2]
}

resource "aws_elasticache_cluster" "redis-cluster" {
  cluster_id           = "cluster-redis-id"
  engine               = "redis"
  node_type            = "cache.m4.large"
  subnet_group_name    =  aws_elasticache_subnet_group.tf-cache-subnet.name
  availability_zone    = "us-east-1a"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}