# resource "aws_instance" "gowebapp" {
#     ami = "ami-053b0d53c279acc90"
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.128"
#     key_name = "madhukey"
#     disable_api_stop = false
#     user_data = file("scripts/go-webapp.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "go-web-app"
#             PrivateIP = "10.1.2.128"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "go-web-app"
#         Prod = "True"
#         PrivateIP = "10.1.2.128"
#     }
#     tags_all = {
#         Name = "go-web-app"
#         Prod = "True"
#         PrivateIP = "10.1.2.128"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "gowebapp-pip" {
#     value =aws_instance.gowebapp.public_ip
  
# }