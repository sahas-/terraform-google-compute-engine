- hello-api.tf - plan contains the logic to create a vm (google_compute_resource)
- vars/dev.tfvars - contains the dev environment specific variables that will be leverages in the plan
- remote_config.tf - contains remote_state configurations leveraging google cloud bucket

* pre-requisites
    - download google cloud credentials file https://cloud.google.com/docs/authentication
    - `export GOOGLE_APPLICATION_CREDENTIALS=<path_to_service_account_file>`

* Steps:
    - terraform init
    - terraform plan -var-file=vars/dev.tfvars
    - terraform apply -var-file=vars/dev.tfvars

* upon successful completion, you should see resources created and bucket populated with the state file.