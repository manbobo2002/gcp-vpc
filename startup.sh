# create network-1 and subnet-a
gcloud compute networks create network-1 \
    --subnet-mode=custom \
    --bgp-routing-mode=regional

gcloud compute networks subnets create subnet-a \
    --network network-1 \
    --range 10.0.0.0/8 \
    --region="us-east1"

# create network-2 and subnet-b
gcloud compute networks create network-2 \
    --subnet-mode=custom \
    --bgp-routing-mode=regional

gcloud compute networks subnets create subnet-b \
    --network network-2 \
    --range 172.16.0.0/24\
    --region="asia-east1"

# ensure firewall allows the access
gcloud compute firewall-rules create fwr-network-1 --network network-1 --allow tcp:22,tcp:3389,icmp
gcloud compute firewall-rules create fwr-network-2 --network network-2 --allow tcp:22,tcp:3389,icmp

# create instance on the subnet a and b respectively
gcloud compute instances create vm-network-1 \
    --machine-type f1-micro \
    --zone "us-east1-b" \
    --network-interface subnet=subnet-a
    
gcloud compute instances create vm-network-2 \
    --machine-type f1-micro \
    --zone "asia-east1-b" \
    --network-interface subnet=subnet-b
