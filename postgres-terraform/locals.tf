locals {
    db-name = data.google_secret_manager_secret_version.db-name.secret_data
    sql_user_name = data.google_secret_manager_secret_version.sql_user_name.secret_data
    sql_user_host = data.google_secret_manager_secret_version.sql_user_host.secret_data
    sql_user_password = data.google_secret_manager_secret_version.sql_user_password.secret_data
} 