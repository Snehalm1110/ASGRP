resource "aws_launch_template" "demo" {
    name = var.name
    image_id = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    # security_group_names = var.security_group_names
    tags = {
        Name = var.name
    }
    user_data = base64encode(<<-EOF
    #!/bin/bash
    dnf install httpd -y
    systemctl start httpd 
    systemctl enable httpd 
    echo "hello world!" > /var/www/html/index.html
    EOF
    )
}