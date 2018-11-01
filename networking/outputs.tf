output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "clusterweb_security_group_id" {
  value = "${aws_security_group.ssh_web_instance_cluster.id}"
}

output "clusterweb_elb_security_group_id" {
  value = "${aws_security_group.webservers_elb.id}"
}

output "webserver_port" {
  value = "${var.webserver_port}"
}

output "bastion_security_group_id" {
  value = "${aws_security_group.ssh_bastion_instance.id}"
}

output "bastion_elasticip_id" {
  value = "${element(split(",", join(",", aws_eip.bastion.*.id)), 0)}"
}

output "bastion_elasticip" {
  value = "${element(split(",", join(",", aws_eip.bastion.*.public_ip)), 0)}"
}

output "rds_security_group_id" {
  value = "${aws_security_group.rds_instance.id}"
}

output "jenkinsmaster_security_group_id" {
  value = "${aws_security_group.jenkinsmaster_instance.id}"
}

output "jenkinsslave_security_group_id" {
  value = "${aws_security_group.jenkinsslave_instance.id}"
}

output "simpleweb_security_group_id" {
  value = "${aws_security_group.ssh_web_instance.id}"
}

output "public_subnets" {
  value = ["${aws_subnet.public.*.id}"]
}

output "private_subnets" {
  value = ["${aws_subnet.private.*.id}"]
}

output "database_subnets" {
  value = ["${aws_subnet.private_database.*.id}"]
}

output "database_subnet_group_id" {
  value = "${element(split(",", join(",", aws_db_subnet_group.database_group.*.id)), 0)}"
}


output "database_subnet_group_name" {
  value = "${element(split(",", join(",", aws_db_subnet_group.database_group.*.name)), 0)}"
}
