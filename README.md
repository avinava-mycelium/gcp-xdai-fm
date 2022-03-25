
# ETH chainlink k8 setup

This project helps up setting a chainlink XDAI node in a kubernetes cluster


## Documentation

[How to Run A Fullnode on XDAI FM Chain ](https://ethereum.org/en/developers/docs/nodes-and-clients/run-a-node/)

## Helm repo 

[Add helm repo](helm repo add external-secrets https://charts.external-secrets.io)

[Install the chart] (helm install external-secrets external-secrets/external-secrets)

## Code setup steps

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| Setup k8 cluster | ![#0a192f](https://via.placeholder.com/10/0a192f?text=+) k8-cluster-gcp |
| Setup Postgres DB | ![#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) postgres-terraform |
| Helm setup for the chainlink node | ![#00b48a](https://via.placeholder.com/10/00b48a?text=+) helm |


## Appendix

We are in the process of pulling in prometheus and grafan setups


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
## Secrets

To run this project, you will need to add the following secrets to your helm/charts/secrets/ folder

`API_KEY` --> .api (use the user name and password that is needede to login to the chainlink pod)

`PASSWORD_KEY` --> .password



## Environment Variables

To run this project, you will need to add the following environment variables to your configMap.yaml file

---
For testnet setup

`ROOT`
`LOG_LEVEL`
`ETH_CHAIN_ID`
`ALLOW_ORIGINS`
`DEFAULT_HTTP_ALLOW_UNRESTRICTED_NETWORK_ACCESS`
`LOG_TO_DISK`
`ETH_URL`
`DATABASE_URL`
`DATABASE_TIMEOUT`

---

For OCR setup

`ROOT`
`LOG_LEVEL`
`ETH_CHAIN_ID`
`ALLOW_ORIGINS`
`DEFAULT_HTTP_ALLOW_UNRESTRICTED_NETWORK_ACCESS`
`LOG_TO_DISK`
`FEATURE_OFFCHAIN_REPORTING`
`OCR_TRACE_LOGGING`
`P2P_LISTEN_PORT`
`OCR_DATABASE_TIMEOUT`
`OCR_CONTRACT_TRANSMITTER_TRANSMIT_TIMEOUT`
`OCR_OBSERVATION_GRACE_PERIOD`
`ETH_URL`
`ETH_SECONDARY_URL`
`P2P_BOOTSTRAP_PEERS`
`DATABASE_URL`
`DATABASE_TIMEOUT`


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
