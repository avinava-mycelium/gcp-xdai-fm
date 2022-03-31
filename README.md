
# XDAI FM chainlink k8 setup in GCP

This project helps up setting a chainlink XDAI node in a kubernetes cluster in Google Cloud Platform


## Documentation

[How to Run A Fullnode on XDAI FM Chain ](https://www.xdaichain.com/for-developers/install-xdai-client)

[Running Chainlink Nodes on Kubernetes and the Google Cloud Platform](https://medium.com/secure-data-links/running-chainlink-nodes-on-kubernetes-and-the-google-cloud-platform-1fab922b3a1a)

## Code setup steps

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Setup k8 cluster | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) k8-cluster-gcp |
| Setup Postgres DB | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) postgres-terraform |
| Helm setup for the chainlink node | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) helm |


## Appendix

We are in the process of pulling in prometheus and grafana setups via IaC


## Installation

Install Gcloud CLI before starting

```bash
  wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-363.0.0-darwin-arm.tar.gz
  tar -xvzf google-cloud-sdk-363.0.0-darwin-arm.tar.gz
  cd google-cloud-sdk
  ./install.sh
```

Install kubectl in Gcloud CLI

```bash
  gcloud components install kubectl
```

Install helm ith Homebrew

```bash
  brew install helm
```

## Helm repo 

[Add helm repo] (helm repo add external-secrets https://charts.external-secrets.io)

[Install the chart] (helm install external-secrets external-secrets/external-secrets)

## Secrets

All the sensitive data, like API_KEY, API_PASSWORD, DATABASE_URL, FLAGS_CONTRACT_ADDRESS, LINK_CONTRACT_ADDRESS are stored in GCP's secret manager.


## Environment Variables

To run this project, you will need to add the following environment variables

## in configmap.yaml file

`CHAINLINK_TLS_PORT`
`ETH_URL`
`ROOT`
`SECURE_COOKIES`
`MINIMUM_CONTRACT_PAYMENT_LINK_JUELS`
`ALLOW_ORIGINS`
`ETH_CHAIN_ID`
`ETH_SECONDARY_URLS`
`DEFAULT_HTTP_ALLOW_UNRESTRICTED_NETWORK_ACCESS`

## as secrets in secret_env.yaml file

`DATABASE_URL`
`LINK_CONTRACT_ADDRESS`
`FLAGS_CONTRACT_ADDRESS`


## For passing login credentials (secrets)
  `API`
  `PASSWORD`

## Deployment of kubernertes cluster

To deploy this project make sure you have terraform installed 

[Terraform instalation guide ](https://learn.hashicorp.com/tutorials/terraform/install-cli)


```bash
  cd k8-cluster-gcp
  terraform init
  terraform plan
  terraform apply --auto-approve
```

This will install the cluster
---
Changes need to be done to the terraform.vars file for customization needs

## Deployment of postgres db

```bash
  cd postgres-terraform
  terraform init
  terraform plan
  terraform apply --auto-approve
```

This will install the database
---
Changes need to be done to the terraform.vars file for customization needs

## Deployment of XDAI chainlink node

To deploy this project make sure you have ```helm``` installed 

```bash
  cd ./helm/charts
  helm install XDAI-FM .
  helm list ```This will show the helm deployed```
  kubectl get all
```
