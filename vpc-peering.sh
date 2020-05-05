gcloud compute networks peerings create peer-12 \
    --network network-1 \
    --peer-network network-2 \
    --auto-create-routes


gcloud compute networks peerings create peer-21 \
     --network network-2 \
     --peer-network network-1 \
     --auto-create-routes
