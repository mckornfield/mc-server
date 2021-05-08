pushd terraform/
terraform show | grep 'ipv4_address' | grep -v private | cut -d'"' -f2 > ../hosts
popd