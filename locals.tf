locals {
  # Sufijo común para nombrar recursos según el Cloud Adoption Framework:
  # <proyecto>-<entorno>-<región>-<instancia>  ->  utvt-integradora-qa-mxc-001
  suffix = "${var.project}-${var.environment}-${var.region_abbreviation}-${var.instance}"

  location = var.location

  tags = merge(
    {
      project     = var.project
      environment = var.environment
      managed_by  = "terraform"
    },
    var.extra_tags
  )
}
