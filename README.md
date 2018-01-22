# Synopsis

[Sparrowdo](https://github.com/melezhik/sparrowdo) provision for [Terraform](https://www.terraform.io) backed instances.

# Install

    $ zef install Sparrowform

# Limitations

Currently only ***ssh instances with public IPs are supported*** ( usually is what one has when deploy aws ec2 instances with public IPs ).
Ping me if you need more flavors/ways support.

# Usage

## Write some Terraform scenarios and deploy some instances

    $ terraform apply

## Create Sparrowodo scenarios, one per instance

Scenarios should be named as `$terrafrom-instance-type.$terraform-instance-ID.sparrowfile`

    $ nano aws_instance.example.sparrowfile
    $ nano aws_instance.example2.sparrowfile
    $ nano aws_instance.example3.sparrowfile
    # ...

## Run Sparrowdo provision

This command will run Sparrowdo scenarios for all instances for which files `$terrafrom-instance-ID.sparrowfile` exist:

    $ sparrowform

## Handling ssh connections

You may pass ssh connection parameters by specifying [sparrowdo cli](https://github.com/melezhik/sparrowdo#sparrowdo-client-command-line-parameters) parameters:

    $ sparrowform --ssh_user=ec2-user --ssh_private_key=/path/to/ssh.key

## Debugging

If something goes awry ... Enable SPF_DEBUG variable to see internal output:

    $ SPF_DEBUG=1 sparrowform

## Dry run

If you only want to see which instances would be deployed, run with  SPG_DRYRUN enabled:

    $ SPF_DRYRUN=1 sparrowform

# Author

Alexey Melezhik


# See also

* [Sparrowdo](https://github.com/melezhik/sparrowdo)
* [Terraform](https://www.terraform.io)
