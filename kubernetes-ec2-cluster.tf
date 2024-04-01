# /// ==========Master node=======
# resource "aws_instance" "k8-master" {
#     ami = "ami-0263e4deb427da90e"
#     disable_api_termination = true
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.120"
#     key_name = "corp_key"
#     #user_data = file("scripts/docker.sh")
#     root_block_device {
#         delete_on_termination = true
#         tags = {
#             Name = "k8-Master"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "k8-Master"
#     }
#     tags_all = {
#         Name = "k8-Master"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.k8-sg.id    
#     ]
# }

# ///==============Node 01 ========

# resource "aws_instance" "k8-node-01" {
#     ami = "ami-0263e4deb427da90e"
#     disable_api_termination = true
#     instance_type = "t2.medium"
#     private_ip = "10.1.2.121"
#     key_name = "corp_key"
#     #user_data = file("scripts/docker.sh")
#     root_block_device {
#         delete_on_termination = true
#         tags = {
#             Name = "k8-node-01"
#         }
#     }
#     subnet_id = aws_subnet.public.id
#     tags = {
#         Name = "k8-node-01"
#     }
#     tags_all = {
#         Name = "k8-node-01"
#     }
#     vpc_security_group_ids = [
#         aws_security_group.k8-sg.id    
#     ]
# }


# //======== node 02======
# # resource "aws_instance" "k8-node-02" {
# #     ami = "ami-0263e4deb427da90e"
# #     disable_api_termination = true
# #     instance_type = "t2.medium"
# #     private_ip = "10.1.2.122"
# #     key_name = "corp_key"
# #     #user_data = file("scripts/docker.sh")
# #     root_block_device {
# #         delete_on_termination = true
# #         tags = {
# #             Name = "k8-node-02"
# #         }
# #     }
# #     subnet_id = aws_subnet.public.id
# #     tags = {
# #         Name = "k8-node-02"
# #     }
# #     tags_all = {
# #         Name = "k8-node-02"
# #     }
# #     vpc_security_group_ids = [
# #         aws_security_group.k8-sg.id    
# #     ]
# # }

# //==== security groups=====

# resource "aws_security_group" "k8-sg" {
#     description = "K8-sg"
#     vpc_id = aws_vpc.deployment.id
#     name = "k8-sg"
#     revoke_rules_on_delete = null
#     tags = {
#         Name = "K8-sg"
#         CreatedBy = "Terraform"
#     }
#     tags_all = {
#         Name = "K8-sg"
#         CreatedBy = "Terraform"
#     }
#     egress = [
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 0
#         ipv6_cidr_blocks = []
#         prefix_list_ids = []
#         protocol = "-1"
#         security_groups = []
#         self = false
#         to_port = 0
#         }
#     ]
#     ingress = [
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 443
#         ipv6_cidr_blocks = ["::/0"]
#         prefix_list_ids = []
#         protocol = "tcp"
#         security_groups = []
#         self = false
#         to_port = 443
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow traffic from public internet"
#         "from_port": 80
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 80
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow SSH from public internet"
#         "from_port": 22
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 22
#         },
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 0
#         ipv6_cidr_blocks = []
#         prefix_list_ids = []
#         protocol = "-1"
#         security_groups = []
#         self = false
#         to_port = 0
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow traffic from public internet"
#         "from_port": 8080
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 8080
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow traffic from public internet"
#         "from_port": 6443
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 6443
#         }

#     ]
# }