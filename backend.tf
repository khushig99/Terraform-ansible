terraform {
    backend "gcs" {
        bucket = "my-terra-state-buck"
        prefix = "gcp-vm-demo"
    }
}
#backend block is hardcoded always, backend terraform se phele initialize hota hai, backend me variables allow nhi hote