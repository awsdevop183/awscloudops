# resource "aws_instance" "cwatch" {
#     ami = "ami-053b0d53c279acc90"
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.142"
#     key_name = "madhukey"
#     disable_api_stop = false
#     # user_data = file("scripts/nginx.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "CWatchAgent"
#             PrivateIP = "10.1.2.142"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "CWatchAgent"
#         Prod = "True"
#         PrivateIP = "10.1.2.142"
#     }
#     tags_all = {
#         Name = "CWatchAgent"
#         Prod = "True"
#         PrivateIP = "10.1.2.142"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "cwatch-pip" {
#     value =aws_instance.cwatch.public_ip
  
# }