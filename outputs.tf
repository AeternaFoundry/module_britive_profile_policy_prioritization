output "profile_policy_prioritizations_id" {
  description = "Map of id values across all profile_policy_prioritizations, keyed the same as var.profile_policy_prioritizations"
  value       = { for k, v in britive_profile_policy_prioritization.profile_policy_prioritizations : k => v.id }
}
output "profile_policy_prioritizations_policy_priority" {
  description = "Map of policy_priority values across all profile_policy_prioritizations, keyed the same as var.profile_policy_prioritizations"
  value       = { for k, v in britive_profile_policy_prioritization.profile_policy_prioritizations : k => v.policy_priority }
}
output "profile_policy_prioritizations_policy_priority_enabled" {
  description = "Map of policy_priority_enabled values across all profile_policy_prioritizations, keyed the same as var.profile_policy_prioritizations"
  value       = { for k, v in britive_profile_policy_prioritization.profile_policy_prioritizations : k => v.policy_priority_enabled }
}
output "profile_policy_prioritizations_profile_id" {
  description = "Map of profile_id values across all profile_policy_prioritizations, keyed the same as var.profile_policy_prioritizations"
  value       = { for k, v in britive_profile_policy_prioritization.profile_policy_prioritizations : k => v.profile_id }
}

