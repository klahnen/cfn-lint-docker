FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Accept cfn-lint version as build argument
ARG CFN_LINT_VERSION

# Install specific version of cfn-lint
RUN pip install cfn-lint==${CFN_LINT_VERSION}

# Create an entrypoint that runs cfn-lint
ENTRYPOINT ["cfn-lint"]

# Default command passes all arguments to cfn-lint
CMD ["--help"]
