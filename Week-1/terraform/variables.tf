variable "credentials" {
  description = "My Credentials"
  default     = "./Users/alexanderbarroso/.config/gcloud/application_default_credentials.json"
}

variable "project" {
  description = "Datacamp2024"
  # Add the service ID in the dafault "datacamp2024-412621"
  default     = "datacamp2024-412621"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default = "us-central1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default = "data-engineering-412621-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
