provider "google" {
  project = "airline1-sabre-wolverine"
}

resource "google_secret_manager_secret" "secret-basic" {
  secret_id = "dev-abcd-fghi-secret1"


  labels = {
    env                  = "default"
    application_division = "pci",
    #application_name     = "demo",
    application_role     = "app",
    au                   = "0223092",
    created              = "20211122",
    data_compliance      = "pci",
    data_confidentiality = "pub",
    data_type            = "test",
    environment          = "dev",
    gcp_region           = "us",
    owner                = "hybridenv",
  }

  replication {
    user_managed {
      replicas {
        location = "asia-south1"
      }
      replicas {
        location = "us-east1"
      }
    }
  }
}