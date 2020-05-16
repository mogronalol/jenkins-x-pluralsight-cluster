module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.2.5"
  gcp_project = "pluralsight-jenkins-x-course"
  cluster_name = "ps-jx-cluster"
  force_destroy = true
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files"
    prefix = "terraform/state"
  }
}

