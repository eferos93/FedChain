chaincodeFolder=$1

echo $chaincodeFolder

docker volume prune

source network.sh up createChannel -ca
source network.sh deployCC -ccn ${chaincodeFolder} -ccp ../../../chaincode/${chaincodeFolder}/go -ccl go
