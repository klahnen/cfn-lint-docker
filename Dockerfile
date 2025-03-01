FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install cfn-lint
RUN pip install cfn-lint

# Create an entrypoint that runs cfn-lint
ENTRYPOINT ["cfn-lint"]

# Default command passes all arguments to cfn-lint
CMD ["--help"]
