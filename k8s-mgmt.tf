resource "aws_instance" "k8smgmt" {
    ami = "ami-080e1f13689e07408"
    disable_api_termination = false
    instance_type = "t2.medium"
    private_ip = "10.1.2.129"
    key_name = "Windows_Vinay"
    disable_api_stop = false
    user_data = file("scripts/docker.sh")
    root_block_device {
        delete_on_termination = true
        volume_size = 12
        tags = {
            Name = "K8s-mgmt"
            PrivateIP = "10.1.2.129"
        }
    }
    subnet_id = aws_subnet.public.id
    tags = {
        Name = "K8s-mgmt"
        Prod = "True"
        PrivateIP = "10.1.2.129"
    }
    tags_all = {
        Name = "K8s-mgmt"
        Prod = "True"
        PrivateIP = "10.1.2.129"
    }
    vpc_security_group_ids = [
        aws_security_group.test-sg.id   
    ]
}


resource "aws_eip" "k8s" {
  vpc      = true
  instance = aws_instance.k8smgmt.id
  tags = {
    Name = "k8s-eip"
  }
}
