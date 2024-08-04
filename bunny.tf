# resource "aws_instance" "bunny" {
#     ami = "ami-053b0d53c279acc90"
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.113"
#     key_name = "madhukey"
#     disable_api_stop = false
#     user_data = file("scripts/nginx.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "reddy.shop"
#             PrivateIP = "10.1.2.113"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "reddy.shop"
#         Prod = "True"
#         PrivateIP = "10.1.2.113"
#     }
#     tags_all = {
#         Name = "reddy.shop"
#         Prod = "True"
#         PrivateIP = "10.1.2.113"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "bunny-pip" {
#     value =aws_instance.bunny.public_ip
  
# }