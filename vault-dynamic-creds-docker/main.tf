# Get the latest PostgreSQL image
resource "docker_image" "postgres" {
  name = "postgres:latest"
}

# Get the latest Vault image
resource "docker_image" "vault" {
  name = "hashicorp/vault:latest"
}

# Start a PostgreSQL container
resource "docker_container" "postgres" {
  name  = "postgres"
  image = docker_image.postgres.image_id
  env = ["POSTGRES_USER=root", "POSTGRES_PASSWORD=rootpassword"]
  ports {
    internal = 5432
    external = 5432
    }
  rm = true
}

# Start a Vault container in dev mode
resource "docker_container" "vault" {
  name  = "vault"
  image = docker_image.vault.image_id
  env = ["VAULT_DEV_ROOT_TOKEN_ID=root", "VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200"]
  ports {
    internal = 8200
    external = 8200
    }
  rm = true
}