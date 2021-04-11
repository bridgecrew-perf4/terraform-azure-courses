These terraform scripts create one VM in Azure.
- Prepare public SSH key `mykey.pub`, example `ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f mykey -q -N ""`
- Understand `security_rule` setting for network_security_group, modify security rule and re-apply VM

