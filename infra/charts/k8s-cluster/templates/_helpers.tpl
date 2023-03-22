{{/*
clusterFullName for service accounts/cluster/nodegroup
*/}}
{{- define "clusterFullName" -}}
kube-{{ required "clusterName must be specified" .Values.clusterName }}
{{- end -}}
