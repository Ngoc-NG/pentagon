aws_vpc_name = "<PLACEHOLDER>"
vpc_cidr_base = "172.20"
aws_azs = "<PLACEHOLDER>"
az_count = 3
aws_inventory_path = "$INFRASTRUCTURE_REPO/plugins/inventory"
aws_region = "<PLACEHOLDER>"

admin_subnet_parent_cidr = ".0.0/20"
admin_subnet_cidrs = {
    zone0 = ".0.0/22"
    zone1 = ".4.0/22"
    zone2 = ".8.0/22"
    zone3 = ".12.0/22"
  }

public_subnet_parent_cidr = ".0.0/20"
public_subnet_cidrs = {
    zone0 = ".16.0/22"
    zone1 = ".20.0/22"
    zone2 = ".24.0/22"
    zone3 = ".28.0/22"
  }

private_prod_subnet_parent_cidr = ".0.0/20"
private_prod_subnet_cidrs = {
    zone0 = ".32.0/22"
    zone1 = ".36.0/22"
    zone2 = ".40.0/22"
    zone3 = ".44.0/22"
  }

private_working_subnet_parent_cidr = ".0.0/20"
private_working_subnet_cidrs = {
    zone0 = ".48.0/22"
    zone1 = ".52.0/22"
    zone2 = ".56.0/22"
    zone3 = ".60.0/22"
  }
