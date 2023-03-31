[![Travis](https://app.travis-ci.com/RsknCankov/docker-nodejs-pdf.svg?branch=master)](https://app.travis-ci.com/github/RsknCankov/docker-nodejs-pdf/logscans)

### Node.js (14.15.1) [GraphicsMagick](http://www.graphicsmagick.org/) [ImageMagick](https://imagemagick.org) and [GhostScript](https://www.ghostscript.com/). I'm using it for Node.js tests execution with [chai-pdf](https://www.npmjs.com/package/chai-pdf). 

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

### If you want to use it as a base
```Dockerfile
FROM rskn/nodejs-pdf:latest
```
