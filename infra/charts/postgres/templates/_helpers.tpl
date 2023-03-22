{{/*
clusterFullName for service accounts/cluster/nodegroup
*/}}
{{- define "postgresFullName" -}}
postgres-{{ required "postgresName must be specified" .Values.postgresName }}
{{- end -}}
