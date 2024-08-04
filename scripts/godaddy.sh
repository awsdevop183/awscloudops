#!/bin/bash

# Replace with your actual GoDaddy API credentials
api_key=$api_key #"3mM44UdBzXPXjC_WDRBFv5a75cqAVtZByS8JS"
api_secret=$api_secret #"2JnKY6pRpMAeC5mG4vJMCY"

# Domain name for which the certificate is being renewed
domain="madhukarreddy.com"

# Function to add a TXT record
add_txt_record() {
    local name="$1"
    local value="$2"

    echo "Adding TXT record: $name=$value"
    
    response=$(curl -s -X PATCH \
        -H "Authorization: sso-key $api_key:$api_secret" \
        -H "Content-Type: application/json" \
        -d "[{\"data\":\"$value\",\"name\":\"$name\",\"ttl\":600,\"type\":\"TXT\"}]" \
        "https://api.godaddy.com/v1/domains/$domain/records/TXT/$name")
    
    if [[ "$response" == *"\"code\":\"UNABLE_TO_COMPLETE_REQUEST\""* ]]; then
        echo "Failed to add TXT record."
        exit 1
    fi
}

# Function to remove a TXT record
remove_txt_record() {
    local name="$1"

    echo "Removing TXT record: $name"

    response=$(curl -s -X DELETE \
        -H "Authorization: sso-key $api_key:$api_secret" \
        "https://api.godaddy.com/v1/domains/$domain/records/TXT/$name")

    if [[ "$response" == *"\"code\":\"UNABLE_TO_COMPLETE_REQUEST\""* ]]; then
        echo "Failed to remove TXT record."
        exit 1
    fi
}

# Main script starts here  3mM44UdBzXPXjC_WDRBFv5a75cqAVtZByS8JS
#       Secret              2JnKY6pRpMAeC5mG4vJMCY

case "$1" in
    "deploy_challenge")
        # Handle wildcard domain
        if [[ "$2" == *"_acme-challenge."* ]]; then
            add_txt_record "$2" "$4"
        else
            add_txt_record "_acme-challenge.$2" "$4"
            add_txt_record "_acme-challenge.$2" "$4"
        fi
        sleep 30 # Wait for DNS to propagate
        ;;
    "clean_challenge")
        # Handle wildcard domain
        if [[ "$2" == *"_acme-challenge."* ]]; then
            remove_txt_record "$2"
        else
            remove_txt_record "_acme-challenge.$2"
            remove_txt_record "_acme-challenge.$2"
        fi
        ;;
    *)
        echo "Usage: $0 {deploy_challenge|clean_challenge} domain token value"
        exit 1
        ;;
esac

exit 0




sudo certbot certonly --manual --preferred-challenges dns --manual-auth-hook /home/dev/dnsscript.sh --manual-cleanup-hook /home/dev/dnsscript.sh -d madhukarreddy.com -d *.madhukarreddy.com

0 0 * * * certbot renew --dry-run --manual --preferred-challenges dns \
    --manual-auth-hook /home/dev/dnsscript.sh \
    --manual-cleanup-hook /home/dev/dnsscript.sh \
    -d madhukarreddy.com -d *.madhukarreddy.com >> /var/log/letsencrypt-renew.log 2>&1