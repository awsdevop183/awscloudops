# resource "aws_instance" "test" {
#     ami = "ami-053b0d53c279acc90"
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.112"
#     key_name = "corp_key"
#     disable_api_stop = false
#     #user_data = file("scripts/nginx.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "test.com"
#             PrivateIP = "10.1.2.112"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "test.com"
#         Prod = "True"
#         PrivateIP = "10.1.2.112"
#     }
#     tags_all = {
#         Name = "test.com"
#         Prod = "True"
#         PrivateIP = "10.1.2.112"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "test-pip" {
#     value =aws_instance.test.public_ip
  
# }