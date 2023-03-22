# boostrap-stacks


This is a collection of stack templates the users can use to create a small stacks to start using Cycloid.


## How does a template work

The difference from a normal stacks are the following:
- a template stack has in the `.config.yml` the field `template: true`
- you can use jinja2 templates to conditionally alter the resulting stack

When the user creates a stack from template the BE will pass the following parameters:
- stack_template
- stack_usecase
- user_stack_canonical
- user_stack_description
- user_stack_icon
- stack_path
- api_url
- auth_type

The relevant files will be rendered with the passed parameters and added to a resulting stack.
The relevant files are the following
- `.config.yml`, `.forms.yml` and `README.md` files
- all the files (not directories) under the `terraform`, `pipeline`, and `ansible` directories
- all the files that have the `stack_usecase` in their path

For example if the `stack_usecase` is `aws`  the file `terraform-sample/terraform/aws/variables.tf` is rendered and included in the resulting stack.
While `terraform-sample/terraform/gcp/aws-migation.tf` will not since  it is not directly under the `terrafor` directory and the usecase do not appear it the path to the file but in the filename.

