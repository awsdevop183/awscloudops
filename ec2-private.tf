# resource "aws_instance" "madhukarreddy" {
#     ami = "ami-0bd572fc22d238831"
#     disable_api_termination = true
#     instance_type = "t2.micro"
#     private_ip = "10.1.2.111"
#     key_name = "corp_key"
#     disable_api_stop = false
#     #user_data = file("scripts/docker.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 13
#         tags = {
#             Name = "madhukarreddy.com"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "madhukarreddy.com"
#         Prod = "True"
#     }
#     tags_all = {
#         Name = "madhukarreddy.com"
#         Prod = "True"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.nginx.id    
#     ]
# }

# output "madhukarreddy-pip" {
#     value =aws_instance.madhukarreddy.public_ip
  
# }