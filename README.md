### Development Project Workspace

# h1
## h2
### h3
#### h4
##### h5
###### h6

- one
- two
- three

1. one
1. two
1. three

```javascript
let a = 10;

docker login ghcr.io -u USERNAME -p ghp_vCTSGlIZJ7v9GAMOQijN6I0IQvF4091eL56

`````````
docker push ghdcr.io/NAMESPACE/IMAGE_

docker push ghcr.io/Piya3Pumsawat/PiyaPu:latest

docker pull  ghcr.io/karnwd/kwgit:latest

docker run --name myfriend -p 9090:80 -d ghcr.io/andapattanachoo/devops_1

docker tag ghcr.io/piya3pumsawat/piyapu ghcr.io/piya3pumsawat/piyapu:v1
docker push ghcr.io/piya3pumsawat/piyapu:v1

docker build -t ghcr.io/piya3pumsawat/piyapu:v2

docker tag ghcr.io/piya3pumsawat/piyapu:v2 ghcr.io/piya3pumsawat/piyapu:latest

docker push ghcr.io/piya3pumsawat/piyapu:latest

docker ps -a

docker rm some-nginx

docker rm -f some-nginx

````````````````

version '3'
services:
my
jenkins:
  container_name: jenkins
  image: jenkins
  - ./jenkins:/var/jenkins_home
  ports:
  - 8080:8080
  - 5000:5000
ubuntu:
  container_name: ubuntu14
  image: "ubuntu:14.04"
  ````````````````