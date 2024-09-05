# resource "aws_instance" "tomcatrabit" {
#     ami = "ami-0d1cacd7c6bfa764b" #CentOS 7
#     disable_api_termination = false
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.115"
#     key_name = "madhukey"
#     disable_api_stop = false
#     user_data = file("scripts/rabbitmq.sh")
#     root_block_device {
#         delete_on_termination = true
#         volume_size = 12
#         tags = {
#             Name = "RabbitMQTomCat"
#             PrivateIP = "10.1.2.115"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "RabbitMQTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.115"
#     }
#     tags_all = {
#         Name = "RabbitMQTomCat"
#         Prod = "True"
#         PrivateIP = "10.1.2.115"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.test-sg.id    
#     ]
# }


# output "tomcatrabit-pip" {
#     value =aws_instance.tomcatrabit.public_ip
  
# }