resource "aws_security_group" "test-sg" {
    description = "test-sgSG"
    vpc_id = aws_vpc.Prod.id
    name = "test-sg"
    revoke_rules_on_delete = null
    tags = {
        Name = "test-sg"
        CreatedBy = "Terraform"
    }
    tags_all = {
        Name = "test-sg"
        CreatedBy = "Terraform"
    }
    egress = [
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 0
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "-1"
        security_groups = []
        self = false
        to_port = 0
        }
    ]
    ingress = [
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 443
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 443
        },
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ]
        "description": "Allow traffic from public internet"
        "from_port": 80
        "ipv6_cidr_blocks": []
        "prefix_list_ids": []
        "protocol": "tcp"
        "security_groups": []
        "self": false
        "to_port": 80
        },
        {
        "cidr_blocks": [
            "0.0.0.0/0"
        ]
        "description": "Allow SSH from public internet"
        "from_port": 22
        "ipv6_cidr_blocks": []
        "prefix_list_ids": []
        "protocol": "tcp"
        "security_groups": []
        "self": false
        "to_port": 22
        },
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 0
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "-1"
        security_groups = []
        self = false
        to_port = 0
        }

    ]
}