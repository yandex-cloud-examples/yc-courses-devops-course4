{{- define "yc-alb-ingress-controller.fullname" -}}
	{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "yc-alb-ingress-controller.serviceAccountName" -}}
	{{- if .Values.serviceAccount.create -}}
    	{{ default (include "yc-alb-ingress-controller.fullname" .) .Values.serviceAccount.name }}
	{{- else -}}
    	{{ default "default" .Values.serviceAccount.name }}
	{{- end -}}
{{- end -}}
