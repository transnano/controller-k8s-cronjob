# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.137.0/containers/go/.devcontainer/base.Dockerfile
ARG VARIANT="1"
FROM mcr.microsoft.com/vscode/devcontainers/go:0-${VARIANT}

# [Optional] Install a version of Node.js using nvm for front end dev
ARG INSTALL_NODE="true"
ARG NODE_VERSION="lts/*"
RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "source /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment the next line to use go get to install anything else you need
# RUN go get -x <your-dependency-or-tool>
ARG KBVER=2.3.1
RUN os=$(go env GOOS) \
    && arch=$(go env GOARCH) \
    && curl -L https://go.kubebuilder.io/dl/${KBVER}/${os}/${arch} | tar -xz -C /tmp/ \
    && mv /tmp/kubebuilder_${KBVER}_${os}_${arch} /usr/local/kubebuilder \
    && export PATH=$PATH:/usr/local/kubebuilder/bin
ENV PATH $PATH:/usr/local/kubebuilder/bin

WORKDIR /usr/local/bin/
RUN curl -s "https://raw.githubusercontent.com/\
kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
