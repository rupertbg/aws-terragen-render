# aws-terragen-render
### Automated Terragen Project Rendering on AWS EC2

## Usage
  1. Save your desired render settings in your Terragen project and export it as a *Gathered Project* called `project` and place `project.tgd` and `Project_Assets` directory called `project` alongside these scripts.
  2. Make sure you have the [AWS CLI](https://aws.amazon.com/cli/) installed (not the Powershell Tools) and have [configured it correctly to access your AWS account](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html).
  3. Use either `run.sh` or `run.ps1` (depending on your OS / environment) to upload that project to your S3 Bucket and kick off the render server.
  4. Render output should arrive in `s3://${Your-Bucket-Name}/renders/`.
