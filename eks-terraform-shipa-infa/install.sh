#!/bin/bash

helm repo add shipa-charts https://shipa-charts.storage.googleapis.com

helm repo update

helm upgrade --install shipa shipa-charts/shipa \
  --set auth.adminUser=admin@acme.com --set auth.adminPassword=this-is-a-secret \
  --namespace shipa-system --create-namespace --timeout=1000s --wait