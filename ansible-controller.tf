resource "aws_instance" "ansible-controller" {
    ami = "ami-080e1f13689e07408"
    disable_api_termination = false
    instance_type = "t2.medium"
    private_ip = "10.1.2.116"
    key_name = "Windows_Vinay"
    disable_api_stop = false
    user_data = file("scripts/docker.sh")
    root_block_device {
        delete_on_termination = true
        volume_size = 12
        tags = {
            Name = "ansible-controller"
            PrivateIP = "10.1.2.116"
        }
    }
    subnet_id = aws_subnet.public.id
    tags = {
        Name = "ansible-controller"
        Prod = "True"
        PrivateIP = "10.1.2.116"
    }
    tags_all = {
        Name = "ansible-controller"
        Prod = "True"
        PrivateIP = "10.1.2.116"
    }
    vpc_security_group_ids = [
        aws_security_group.test-sg.id      
    ]
}


output "ansible-controller" {
    value =aws_instance.ansible-controller.public_ip
}