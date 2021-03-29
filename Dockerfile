FROM ubuntu:devel@sha256:f537a135b5ae51f4969eda45abd7cac7a3ecc4fbd0d0907cdbfc0d0d4c28a430
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{"repo": "pin-test-repo1","base": "base1", "version": 11}' > dog.json
CMD ["cat", "dog.json"]
