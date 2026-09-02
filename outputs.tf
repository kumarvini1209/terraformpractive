output "west_vpc_id" {
  value = aws_vpc.west.id
}

output "west_instance_id" {
  value = aws_instance.west.id
}

output "east_vpc_id" {
  value = aws_vpc.east.id
}

output "east_instance_id" {
  value = aws_instance.east.id
}