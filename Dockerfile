FROM ubuntu:devel@sha256:59f1c138519310e4cf1eb9c145d2fcd568fac9796c128941384e415ce4926a85
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{:repo "pin-test-repo1" :base "base1", :version 23}' > dog.json
CMD ["cat", "dog.json"]
