module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project = "my-project-1234-300417"
  cluster_name = "demo-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "demo-jx-terraform-state-files01"
    prefix = "/terraform/state"
  }
}
