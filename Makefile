1:
	docker run \
		--cpus 1 \
		-v /Users/lee.hsun/code/sharing-nodejs-readfile:/app \
		-w /app \
		node:21 node --expose-gc --trace-gc ./readfile.js

2:
	docker run \
		--cpus 2 \
		-v /Users/lee.hsun/code/sharing-nodejs-readfile:/app \
		-w /app \
		node:21 node --expose-gc --trace-gc ./readfile.js

3:
	docker run \
		--cpus 3 \
		-v /Users/lee.hsun/code/sharing-nodejs-readfile:/app \
		-w /app \
		node:21 node ./readfile.js

4:
	docker run \
		--cpus 4 \
		-v /Users/lee.hsun/code/sharing-nodejs-readfile:/app \
		-w /app \
		node:21 node ./readfile.js