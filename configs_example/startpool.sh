#!/bin/bash

# https://github.com/TeamEGEM/go-egem
#egemmain:
screen -dmS egemgeth /root/go-egem/build/bin/egem --rpc --ws --unlock="0x0" --password="/root/egempass"

sleep 5

#pool2b 8002:
screen -dmS egempool2b /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/pool2b.json

sleep 5

#pool4b 8004:
screen -dmS egempool4b /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/pool4b.json

sleep 5

#pool42b 8008:
screen -dmS egempool42b /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/pool42b.json

sleep 5

#pool9b 8009:
screen -dmS egempool9b /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/pool9b.json

sleep 5

#api:
screen -dmS egemapi /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/api.json

sleep 5

#unlocker:
screen -dmS egemunlocker /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/unlocker.json

sleep 5

#payout:
screen -dmS egempayout /root/open-ethereum-pool/build/bin/open-ethereum-pool /root/payout.json

sleep 5

# Sample start for stats reporting
# Reports to EGEM Network Intelligence API https://network.egem.io/

#netintelligence:
#cd /root/egem-net-intelligence-api/ && pm2 start /root/egem-net-intelligence-api/app.json

exit 0
