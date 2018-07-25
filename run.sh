if [ ! -d "./share" ]; then
	mkdir share
fi
docker run -t -i \
-v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) \
-v share:/home/reidar/share \
-e USER=reidar \
-e PATH=$PATH:/home/reidar/.local/bin \
-e SSH_AUTH_SOCK=$SSH_AUTH_SOCK \
-u reidar \
-w /home/reidar \
reidarcederqvist/iopsys /bin/bash
