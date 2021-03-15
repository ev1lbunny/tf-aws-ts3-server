output "private_generated_key" {
  description = "The generated private key used to access the joint ec2 instances via ssh"
  value       = tls_private_key.key_pair_config
  sensitive   = true
}
