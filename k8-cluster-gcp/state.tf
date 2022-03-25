terraform {
  backend "gcs" {
    bucket  = "backend-bucket-sdl"
    prefix  = "xdai/xdai-fm-cluster.tfstate"
  }
}