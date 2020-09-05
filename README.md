# puppet-test

## Handy Commands
```
# To take help of puppet subcommand
$ puppet help

# To list the resource types
$ puppet resource --types

# To get the details of the resources
$ puppet describe <resource-name>

# Validation check
$ puppet parser validate <puppet-file-name>.pp

# Dry run
$ puppet apply <puppet-file-name>.pp --noop

# Apply
$ puppet apply <puppet-file-name>.pp

# Dry run on agent node
$ puppet agent -tv --noop

# Run on agent node
$ puppet agent -tv 


