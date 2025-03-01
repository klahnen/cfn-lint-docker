FROM python:3.9-slim

# Set working directory
WORKDIR /data

# Install cfn-lint
RUN pip install cfn-lint==1.24.0

# Create an entrypoint that runs cfn-lint
ENTRYPOINT ["cfn-lint"]

# Default command passes all arguments to cfn-lint
CMD ["--help"]
