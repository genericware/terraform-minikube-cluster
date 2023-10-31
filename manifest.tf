resource "local_file" "default" {
  filename = "${path.root}/files/manifest.yaml"
  content  = <<-EOT
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: app-of-apps
  namespace: argocd
spec:
  destination:
    namespace: argocd
    server: https://kubernetes.default.svc
  project: default
  source:
    chart: ${var.repository}
    targetRevision: ${var.branch}
    helm:
      values: |
        project:
          name: ${var.name}
          description: ${var.description}
          organization: ${var.organization}
          environment: ${var.environment}
          region: ${var.region}
          domain: ${var.domain}
          platform: minikube
          profile: ${var.profile}
          repository: ${var.repository}
          branch: ${var.branch}

        network:
          mode: ${var.network_mode}
          issuer: ${var.network_issuer}

        applications:
          argocd:
            enabled: ${var.enable_argocd}
            revision: ${var.version_argocd}
            namespace: ${var.namespace_argocd}
          certManager:
            enabled: ${var.enable_cert_manager}
            revision: ${var.version_cert_manager}
            namespace: ${var.namespace_cert_manager}
          istio:
            enabled: ${var.enable_istio}
            revision: ${var.version_istio}
            base:
              namespace: ${var.namespace_istio_base}
            gateway:
              namespace: ${var.namespace_istio_gateway}
            istiod:
              namespace: ${var.namespace_istio_istiod}
          kiali:
            enabled: ${var.enable_kiali}
            revision: ${var.version_kiali}
            namespace: ${var.namespace_kiali}
          knative:
            enabled: ${var.enable_knative}
            operator:
              version: ${var.version_knative_operator}
              namespace: ${var.namespace_knative_operator}
            serving:
              version: ${var.version_knative_serving}
              namespace: ${var.namespace_knative_serving}
            eventing:
              version: ${var.version_knative_eventing}
              namespace: ${var.namespace_knative_eventing}
          prometheus:
            enabled: ${var.enable_prometheus}
            revision: ${var.version_prometheus}
            namespace: ${var.namespace_prometheus}
          minio:
            enabled: ${var.enable_minio}
            revision: ${var.version_minio}
            namespace: ${var.namespace_minio}
          loki:
            enabled: ${var.enable_loki}
            revision: ${var.version_loki}
            namespace: ${var.namespace_loki}
          promtail:
            enabled: ${var.enable_promtail}
            revision: ${var.version_promtail}
            namespace: ${var.namespace_promtail}
          tempo:
            enabled: ${var.enable_tempo}
            revision: ${var.version_tempo}
            namespace: ${var.namespace_tempo}
          kafka:
            enabled: ${var.enable_kafka}
            revision: ${var.version_kafka}
            namespace: ${var.namespace_kafka}
EOT
}
