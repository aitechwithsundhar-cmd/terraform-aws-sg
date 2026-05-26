locals {

  common_tags = {
    project     = var.project
    environment = var.environment
    terraform   = "true"
  }
  tags = merge(
    local.common_tags,{
        Name = "${var.project}-${var.environment}-${var.sg_name}"
    },
    var.sg_tags
  )
}