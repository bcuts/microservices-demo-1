#!/bin/bash

set -e

kubectl delete deploy,svc cloud-gateway
kubectl delete deploy,svc account-service
kubectl delete deploy,svc auth-service
kubectl delete deploy,svc monitor-dashboard
kubectl delete deploy,svc turbine-server
kubectl delete deploy,svc service-registry
kubectl delete deploy,svc config-server

kubectl delete deploy,svc zipkin
kubectl delete deploy,svc rabbitmq

kubectl delete pvc config-claim log-claim
kubectl delete pv config-pv log-pv

kubectl delete cm env-config
kubectl delete secrets config-secret
