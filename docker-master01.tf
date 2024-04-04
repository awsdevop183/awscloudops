# resource "aws_instance" "master01" {
#     ami = "ami-080e1f13689e07408"
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.113"
#     key_name = "Windows_Vinay"
#     disable_api_stop = false
#     user_data = file("scripts/docker.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "docker-master01"
#             PrivateIP = "10.1.2.113"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "docker-master01"
#         Prod = "True"
#         PrivateIP = "10.1.2.113"
#     }
#     tags_all = {
#         Name = "docker-master01"
#         Prod = "True"
#         PrivateIP = "10.1.2.113"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id     
#     ]
# }


# output "node-01" {
#     value =aws_instance.master01.public_ip
  
# }