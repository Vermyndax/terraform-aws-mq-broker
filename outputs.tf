output "broker_id" {
  value       = join("", aws_mq_broker.default.*.id)
  description = "AmazonMQ broker ID"
}

output "broker_arn" {
  value       = join("", aws_mq_broker.default.*.arn)
  description = "AmazonMQ broker ARN"
}

output "security_group_id" {
  value       = module.security_group.id
  description = "AmazonMQ Security Group ID"
}

output "security_group_arn" {
  value       = module.security_group.arn
  description = "AmazonMQ Security Group ARN"
}

output "security_group_name" {
  value       = module.security_group.name
  description = "AmazonMQ Security Group name"
}

output "primary_console_url" {
  value       = try(aws_mq_broker.default[0].instances[0].console_url, "")
  description = "AmazonMQ active web console URL"
}

output "primary_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[0].endpoints[0], "")
  description = "AmazonMQ primary SSL endpoint"
}

output "primary_amqp_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[0].endpoints[1], "")
  description = "AmazonMQ primary AMQP+SSL endpoint"
}

output "primary_stomp_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[0].endpoints[2], "")
  description = "AmazonMQ primary STOMP+SSL endpoint"
}

output "primary_mqtt_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[0].endpoints[3], "")
  description = "AmazonMQ primary MQTT+SSL endpoint"
}

output "primary_wss_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[0].endpoints[4], "")
  description = "AmazonMQ primary WSS endpoint"
}

output "primary_ip_address" {
  value       = try(aws_mq_broker.default[0].instances[0].ip_address, "")
  description = "AmazonMQ primary IP address"
}

output "secondary_console_url" {
  value       = try(aws_mq_broker.default[0].instances[1].console_url, "")
  description = "AmazonMQ secondary web console URL"
}

output "secondary_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[1].endpoints[0], "")
  description = "AmazonMQ secondary SSL endpoint"
}

output "secondary_amqp_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[1].endpoints[1], "")
  description = "AmazonMQ secondary AMQP+SSL endpoint"
}

output "secondary_stomp_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[1].endpoints[2], "")
  description = "AmazonMQ secondary STOMP+SSL endpoint"
}

output "secondary_mqtt_ssl_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[1].endpoints[3], "")
  description = "AmazonMQ secondary MQTT+SSL endpoint"
}

output "secondary_wss_endpoint" {
  value       = try(aws_mq_broker.default[0].instances[1].endpoints[4], "")
  description = "AmazonMQ secondary WSS endpoint"
}

output "secondary_ip_address" {
  value       = try(aws_mq_broker.default[0].instances[1].ip_address, "")
  description = "AmazonMQ secondary IP address"
}

output "admin_username" {
  value       = local.mq_admin_user
  description = "AmazonMQ admin username"
}

output "application_username" {
  value       = local.mq_application_user
  description = "AmazonMQ application username"
}

output "application_password" {
  value       = local.mq_application_password
  description = "AmazonMQ application password (sensitive!)"
  sensitive   = true
}

output "master_password" {
  description = "Password for master. Sensitive!"
  value       = random_password.mq_admin_password[0].result
  sensitive   = true
}
