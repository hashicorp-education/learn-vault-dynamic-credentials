output "POSTGRES_URL" {
  description = "Environment variable to access container running PostgreSQL"
  value       = "export TF_VAR_POSTGRES_URL=${docker_container.postgres.network_data.0.ip_address}:5432"
}

output "POSTGRES_URL_HOST" {
  description = "Environment variable to access container running PostgreSQL"
  value       = "export 127.0.0.1:5432"
}

output "VAULT_ADDR" {
  description = "Environment variable to access container running Vault"
  value       = "export VAULT_ADDR=http://127.0.0.1:8200" #docker_container.vault.network_data.0.ip_address
}

output "VAULT_TOKEN" {
  description = "Environment variable for Vault root token"
  value       = "export VAULT_TOKEN=root" #docker_container.vault.network_data.0.ip_address
}