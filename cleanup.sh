gcloud compute networks peerings delete peer-12 --network network-1
gcloud compute networks peerings delete peer-21 --network network-2
gcloud compute instances delete vm-network-1 --zone us-east1-b -q
gcloud compute instances delete vm-network-2 --zone asia-east1-b -q
gcloud compute firewall-rules delete fwr-network-1 -q
gcloud compute firewall-rules delete fwr-network-2 -q
gcloud compute networks subnets delete subnet-a --region us-east1 -q
gcloud compute networks subnets delete subnet-b --region asia-east1 -q
gcloud compute networks delete network-1 -q
gcloud compute networks delete network-2 -q
