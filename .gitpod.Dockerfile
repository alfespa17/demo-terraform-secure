FROM gitpod/workspace-full

USER gitpod

RUN yarn global add snyk && \
    pip install checkov && \
    curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash && \
    curl -L https://github.com/tenable/terrascan/releases/download/v1.18.1/terrascan_1.18.1_Linux_x86_64.tar.gz -o terrascan.tar.gz && \
    tar -xvzf terrascan.tar.gz && \
    cp terrascan /usr/local/bin

