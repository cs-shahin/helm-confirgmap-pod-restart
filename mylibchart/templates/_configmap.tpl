{{ define "mylibchart.configmap" }}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .Release.Name }}-configmap
data:
{{ .Values.configMap | toYaml | indent 2 }}
{{- end }}