# resource "local_file" "localfile" {
#     filename = "ansible-inventory"
#     content = templatefile("inventory.tpl",{
#         node01 = aws_instance.ansible-node01.public_ip
#     })
  
# }