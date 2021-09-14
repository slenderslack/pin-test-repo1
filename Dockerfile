FROM ubuntu:devel
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:repo "pin-test-repo1" :base "base1", :version 17}' > dog.json
CMD ["cat", "dog.json"]
