# CFN-Lint Docker Image

A Docker image for [cfn-lint](https://github.com/aws-cloudformation/cfn-lint), the AWS CloudFormation Linter.

## Usage

```bash
# Run cfn-lint on a CloudFormation template
docker run --rm -v $(pwd):/data klahnen/cfn-lint:latest /data/template.yaml

# Show cfn-lint version
docker run --rm klahnen/cfn-lint:latest --version

# Show help
docker run --rm klahnen/cfn-lint:latest --help
