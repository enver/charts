{{- define "app.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "app.labels" -}}
app.kubernetes.io/version: {{ .Values.image.tag | quote }}
app.kubernetes.io/component: {{ include "app.name" . }}
{{- end -}}

{{- define "app.imagePullPolicy" -}}
{{- if or (eq .Values.image.tag "latest") (eq .Values.image.tag "stable") -}}
Always
{{- else -}}
{{ .Values.image.pullPolicy }}
{{- end -}}
{{- end -}}

