data "google_secret_manager_secret_version" "db-name" {
  secret = "CL_DB_Name"
  project = var.project
}

data "google_secret_manager_secret_version" "sql_user_name" {
  secret = "CL_SQL_User_Name"
  project = var.project
}

data "google_secret_manager_secret_version" "sql_user_host" {
  secret = "CL_SQL_User_Host"
  project = var.project
}

data "google_secret_manager_secret_version" "sql_user_password" {
  secret = "CL_SQL_User_Password"
  project = var.project
} 