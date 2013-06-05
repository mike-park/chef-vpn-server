# VPN Installation

## Clone

    bundle install
    librarian-chef install

## Configuration

    edit data_bags/<system>/<name>.json and change password
    add <system>-ca.crt, <system>.crt & <system>.key to certificates/files/default
    adjust nodes/<server>.json

## Update virtual machine

    knife solo prepare root@ip_addr nodes/<server>.json
    knife solo cook root@ip_addr

