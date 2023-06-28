FROM gitpod/workspace-full

USER gitpod

RUN yarn global add snyk && \
    pip install checkov && \
    curl -s https://raw.githubusercontent.com/aquasecurity/tfsec/master/scripts/install_linux.sh | bash 
