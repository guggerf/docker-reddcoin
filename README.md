# ReddCoin wallet for docker

Docker image that runs the reddcoin daemon which can be turned into a staking wallet with the correct configuration.

If you like this image buy me a beer [add reddcoin Adress]

## Quick Start (daemon/staking)

```text
docker run \
  -d \
  -v /home/username/crypto/reddcoin:/reddcoin \
  -p 51472:51472 \
  --name=reddcoin \
  guggerf/reddcoin
```

## staking

for Staking follow this [tutorial](https://steemit.com/reddcoin/@shaunmza/beginners-guide-to-staking-with-reddcoin).
