cd account && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-account --push . && \
cd .. && \
cd apigateway && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-apigateway --push . && \
cd .. && \
cd bff && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-bff --push . && \
cd .. && \  
cd cart && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-cart --push . && \
cd .. && \  
cd order && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-order --push . && \
cd .. && \  
cd payment && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-payment --push . && \
cd .. && \  
cd product && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-product --push . && \
cd .. && \  
cd rabbitmq-consumer && \
docker buildx build --platform linux/amd64,linux/arm64 --cache-from type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache --cache-to type=registry,ref=docker.io/noisonnoiton/awesome-registry-cache,mode=max -t noisonnoiton/awesome-rabbitmq-consumer --push . && \
cd .. && \  
