[![Travis](https://travis-ci.org/RsknCankov/docker-nodejs-pdf.svg?branch=master)](https://travis-ci.org/rskn/docker-nodejs-pdf)

### Node.js (10.15) [GraphicsMagick](http://www.graphicsmagick.org/) [ImageMagick](https://imagemagick.org) and [GhostScript](https://www.ghostscript.com/). I'm using it basically for execution Node.js tests with [chai-pdf](https://www.npmjs.com/package/chai-pdf). 

### Pull from Docker Hub
```
docker push rskn/nodejs-pdf:latest
```

### Build from GitHub
```
docker build -t rskn/nodejs-pdf github.com/RsknCankov/docker-nodejs-pdf
```

### Run image with following command which will execute 'npm test' in current directory
```
docker run -it -v $PWD:/opt/app/ rskn/nodejs-pdf
```

### If you want to use it
```Dockerfile
FROM rskn/nodejs-pdf:latest
```
