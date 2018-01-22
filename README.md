# Synopsis

[Sparrowdo](https://github.com/melezhik/sparrowdo) provision for [Terraform](https://www.terraform.io) backed instances.

# Install

    $ zef install Sparrowform

# Usage

## Write some Terraform scenarios and deploy some instances

    $ terraform apply

## Create Sparrowodo scenarios, one per instance

Scenarios should be named as `$terrafrom-instance-ID.sparrowfile`

    $ nano example.sparrowfile
    $ nano example2.sparrowfile
    $ nano example3.sparrowfile
    # ...

## Run Sparrowdo provision

This command will run Sparrowdo scenarios for all instances for which files `$terrafrom-instance-ID.sparrowfile` exist:

    $ sparrowform run

## Handling ssh connections

You may pass ssh connection parameters by specifying [sparrowdo cli](https://github.com/melezhik/sparrowdo#sparrowdo-client-command-line-parameters) parameters:

    $ sparrowform --ssh_user=ec2-user --ssh_private_key=/path/to/ssh.key

# Author

Alexey Melezhik


# See also

* [Sparrowdo](https://github.com/melezhik/sparrowdo)
* [Terraform](https://www.terraform.io)
