# todo: remove for kustomization
# todo: fix metadata diff caused during 'terraform plan'# todo: fix metadata diff caused during 'terraform plan'
resource "helm_release" "argocd" {
  name             = "argocd"
  namespace        = var.namespace_argocd
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = var.version_argocd
  create_namespace = true

  # globally shared configuration
  set {
    name  = "global.logging.format"
    value = "json"
  }
  set {
    name  = "global.logging.level"
    value = "info"
  }

  # argo configs
  set_sensitive {
    name  = "configs.secret.argocdServerAdminPassword"
    value = bcrypt(var.argocd_admin_password)
  }
  set {
    name  = "configs.cm.resource\\.customizations"
    value = <<-EOT
      cert-manager.io/Certificate:
          health.lua: |
            hs = {}
            if obj.status ~= nil then
              if obj.status.conditions ~= nil then
                for i\, condition in ipairs(obj.status.conditions) do
                  if condition.type == "Ready" and condition.status == "False" then
                    hs.status = "Degraded"
                    hs.message = condition.message
                    return hs
                  end
                  if condition.type == "Ready" and condition.status == "True" then
                    hs.status = "Healthy"
                    hs.message = condition.message
                    return hs
                  end
                end
              end
            end

            hs.status = "Progressing"
            hs.message = "Waiting for certificate"
            return hs
EOT
  }

  # argocd server
  set {
    name  = "server.extraArgs[0]"
    value = "--insecure"
  }

  # argocd application set
  set {
    name  = "applicationSet.service.portName"
    value = "tcp-webhook"
  }
}
