resource "britive_profile_policy_prioritization" "profile_policy_prioritizations" {
  for_each = var.profile_policy_prioritizations

  profile_id              = each.value.profile_id
  policy_priority_enabled = each.value.policy_priority_enabled

  dynamic "policy_priority" {
    for_each = each.value.policy_priority != null ? each.value.policy_priority : []
    content {
      id       = policy_priority.value.id
      priority = policy_priority.value.priority
    }
  }
}

