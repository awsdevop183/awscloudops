# resource "aws_instance" "tomcatmysql" {
#     ami = "ami-0d1cacd7c6bfa764b" #CentOS 7
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.114"
#     key_name = "madhukey"
#     disable_api_stop = false
#     user_data = file("scripts/mysql.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "MysqlTomCat"
#             PrivateIP = "10.1.2.114"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "MysqlTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.114"
#     }
#     tags_all = {
#         Name = "MysqlTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.114"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "tomcatmysql-pip" {
#     value =aws_instance.tomcatmysql.public_ip
  
# }