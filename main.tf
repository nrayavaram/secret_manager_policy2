provider "google" {
  access_token = var.access_token
}

resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "secret-wf-google-tf"
  project      = "nice-symbol-249617"

  labels = {
    label = "my-label2"
  }

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
      replicas {
        location = "europe-west1"
      }
    }
  }
}
