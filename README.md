# CFN-Lint Docker Image

A Docker image for [cfn-lint](https://github.com/aws-cloudformation/cfn-lint), the AWS CloudFormation Linter.

This image is versioned to match the cfn-lint version it contains.

## Versioning

The Docker image version matches the version of cfn-lint installed inside:

- `klahnen/cfn-lint:0.85.0` - Contains cfn-lint version 0.85.0
- `klahnen/cfn-lint:latest` - Contains the latest version specified in `version.txt`

## Usage

```bash
# Run cfn-lint on a CloudFormation template
docker run --rm -v $(pwd):/data klahnen/cfn-lint:latest /data/template.yaml

# Show cfn-lint version
docker run --rm klahnen/cfn-lint:latest --version

# Show help
docker run --rm klahnen/cfn-lint:latest --help
```

## Building Locally

To build the image locally with a specific cfn-lint version:

```bash
# Read version from version.txt
CFN_LINT_VERSION=$(cat version.txt)

# Build the image
docker build --build-arg CFN_LINT_VERSION=$CFN_LINT_VERSION -t klahnen/cfn-lint:$CFN_LINT_VERSION .
```

## Updating the cfn-lint Version

To update the version of cfn-lint in this image:

1. Update the version number in the `version.txt` file
2. Commit and push the changes
3. The GitHub Actions workflow will automatically:
   - Create a Git tag matching the version (e.g., v0.86.0)
   - Build and push a new Docker image with the updated version

```bash
# Example manual process
echo "0.86.0" > version.txt
git add version.txt
git commit -m "Update cfn-lint to version 0.86.0"
git push origin main
```

## License

[MIT](LICENSE)
