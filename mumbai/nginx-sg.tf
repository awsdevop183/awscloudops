resource "aws_security_group" "nginx" {
    description = "NginxSG"
    vpc_id = aws_vpc.Prod.id
    name = "nginx"
    revoke_rules_on_delete = null
    tags = {
        Name = "nginx"
        CreatedBy = "Terraform"
    }
    tags_all = {
        Name = "nginx"
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
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 443
        },
         {
        cidr_blocks = [
            "49.43.218.39/32"
        ]
        description = ""
        from_port = 98
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 98
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
        from_port = 8081
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 8081
        },
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 5001
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 5001
        },
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 1194
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "udp"
        security_groups = []
        self = false
        to_port = 1194
        },
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 532
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "udp"
        security_groups = []
        self = false
        to_port = 532
        },
        {
        cidr_blocks = [
            "0.0.0.0/0"
        ]
        description = ""
        from_port = 5003
        ipv6_cidr_blocks = []
        prefix_list_ids = []
        protocol = "udp"
        security_groups = []
        self = false
        to_port = 5003
        }
        # {
        # cidr_blocks = [
        #     "0.0.0.0/0"
        # ]
        # description = ""
        # from_port = 0
        # ipv6_cidr_blocks = []
        # prefix_list_ids = []
        # protocol = "-1"
        # security_groups = []
        # self = false
        # to_port = 0
        # }

    ]
}