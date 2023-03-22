## Release

```
# let registry_id be your private registry
REGISTRY_ID=<registry_id> make docker-build
...

SOME_IMAGE

docker tag <SOME_IMAGE> cr.yandex/yc/yc-alb-ingress-controller:${NEW_VERSION}

docker push cr.yandex/yc/yc-alb-ingress-controller:${NEW_VERSION}
```

## Helm

1. update `image.tag` in values.yaml
2. push new chart
```
export HELM_EXPERIMENTAL_OCI=1
helm package ./helm/yc-alb-ingress-controller
helm push yc-alb-ingress-controller-chart-${NEW_VERSION}.tgz  oci://cr.yandex/yc
```
3. update chart version in `README.md`
