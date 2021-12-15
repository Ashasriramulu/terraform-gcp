
resource "google_service_account" "default" {
  account_id   = "account_id"
  display_name = "Service Account"
}

resource "google_compute_instance" "default" {
  name         = "alert"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"

 tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "suse-cloud/sles-15"
    }
  }

  

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
 

   metadata = {
    foo = "bar"
  }

  
}


resource "google_monitoring_notification_channel" "basic" {

  display_name = var.display_name 

  type         = var.type

  labels = {

    email_address = var.email_address

  }

}



resource "google_monitoring_alert_policy" "alert_policy" {
  project = var.project_id
  display_name = var.alert_name
  notification_channels = [google_monitoring_notification_channel.basic.name]
  combiner     = var.alert_combiner
  conditions {
    display_name = var.condition_name
    condition_threshold {
      filter          = var.condition_filter
      threshold_value = var.condition_threshold
      duration        = var.condition_duration
      comparison      = var.condition_comparison
      
      aggregations {
        alignment_period   = var.alignment_period
        per_series_aligner = var.per_series_aligner
      }
    }
  }
  
   }


