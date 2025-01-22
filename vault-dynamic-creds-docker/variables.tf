variable "VAULT_EDITION" {
    type = string
    default = "vault"
    description = "Vault edition to use. Options are 'vault' or 'vault-enterprise'"

    validation {
        condition = contains(["vault", "vault-enterprise"], var.VAULT_EDITION)
        error_message = "Vault edition must be either 'vault' or 'vault-enterprise'"
    }
}

variable "VAULT_LICENSE" {
    type = string
    description = "Vault license environment variable must be set for Vault Enterprise"
}
