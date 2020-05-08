# headless-vmware

A shell script making it more convenient to use VMware in headless mode.

## Usage

    vmware.sh operation [vmxfile]

If the latter argument is omitted, it will use the environment variable `VMFILE` instead.

    vmware.sh list [optional]

Passing optional argument after `list` is to grep.