terraform {
  backend "gcs" {
    bucket  = "backend-bucket-sdl"
    prefix  = "xdai/xdai-fm-db.tfstate"
  }
}