# outputs.tf
output "instance-20240904-032353" {
  value = google_compute_instance.default.name
}

output "bucket-multcloud" {
  value = google_storage_bucket.bucket.name
}
