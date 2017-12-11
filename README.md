# aws-terragen-render
### Automated Terragen Project Rendering on AWS EC2

## Usage
  1. Save your desired render settings in your Terragen project.
  2. Export it as a *Gathered Project* called `project`
  3. Place `project.tgd` and `Project_Assets` in a directory called `project` alongside these scripts.
  4. Make sure you have the [AWS CLI](https://aws.amazon.com/cli/) installed (not the Powershell Tools) and have [configured it correctly to access your AWS account](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html).
  5. Have an S3 bucket ready to store your project in.
  5. Use either `run.sh` or `run.ps1` (depending on your OS / environment) to upload that project to your S3 Bucket and kick off the render server.
  6. The rendered `.exr` file should arrive in `s3://${Your-Bucket-Name}/renders/${Date-Of-Render}`. The stack created by the script should self-delete.

## Disclaimer
These scripts create billed resources on AWS. Make sure you are aware of the costs before running them. This repo is provided with no warranty whatsoever. Use at your own risk as per the included `LICENSE`.
