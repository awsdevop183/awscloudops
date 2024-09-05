# resource "aws_instance" "tomcatmemcache" {
#     ami = "ami-0d1cacd7c6bfa764b" #CentOS 7
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.116"
#     key_name = "madhukey"
#     disable_api_stop = false
#     user_data = file("scripts/memcache.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "MemcacheTomCat"
#             PrivateIP = "10.1.2.116"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "MemcacheTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.116"
#     }
#     tags_all = {
#         Name = "MemcacheTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.116"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "tomcatmemcache-pip" {
#     value =aws_instance.tomcatmemcache.public_ip
  
# }