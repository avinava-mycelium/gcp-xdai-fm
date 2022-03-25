output "instance_name" {
  value       = google_sql_database_instance.master.name
  description = "The instance name for the master instance"
}

output "instance_ip_address" {
  value       = google_sql_database_instance.master.ip_address
  description = "The IPv4 address assigned for the master instance"
}

output "private_address" {
  value       = google_sql_database_instance.master.private_ip_address
  description = "The private IP address assigned for the master instance"
}

output "instance_first_ip_address" {
  value       = google_sql_database_instance.master.first_ip_address
  description = "The first IPv4 address of the addresses assigned for the master instance."
}

output "instance_connection_name" {
  value       = google_sql_database_instance.master.connection_name
  description = "The connection name of the master instance to be used in connection strings"
}

output "instance_self_link" {
  value       = google_sql_database_instance.master.self_link
  description = "The URI of the master instance"
}

output "instance_server_ca_cert" {
  value       = google_sql_database_instance.master.server_ca_cert
  description = "The CA certificate information used to connect to the SQL instance via SSL"
}

output "instance_service_account_email_address" {
  value       = google_sql_database_instance.master.service_account_email_address
  description = "The service account email address assigned to the master instance"
}

output "public_ip_address" {
  description = "The first public (PRIMARY) IPv4 address assigned for the master instance"
  value       = google_sql_database_instance.master.public_ip_address
}

output "private_ip_address" {
  description = "The first private (PRIVATE) IPv4 address assigned for the master instance"
  value       = google_sql_database_instance.master.private_ip_address
}