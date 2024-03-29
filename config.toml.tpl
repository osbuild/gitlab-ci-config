concurrent = 380
check_interval = 0

[session_server]
session_timeout = 1800

[[runners]]
name = "terraform"
limit = 300
url = "https://gitlab.com/"
token = "{{ redhat_terraform_token }}"
executor = "custom"
builds_dir = "~/builds"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]
[runners.custom]
prepare_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/prepare"
prepare_exec_timeout = 43200
run_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/exec"
cleanup_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/cleanup"

[[runners]]
name = "shell"
url = "https://gitlab.com/"
token = "{{ redhat_shell_token }}"
executor = "shell"
builds_dir = "/home/gitlab-runner/builds-shell"
cache_dir = "/home/gitlab-runner/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]

[[runners]]
name = "terraform/openstack"
limit = 70
url = "https://gitlab.com/"
token = "{{ redhat_terraform_openstack_token }}"
executor = "custom"
builds_dir = "~/builds-openstack"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]
[runners.custom]
prepare_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/prepare"
prepare_exec_timeout = 43200
run_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/exec"
cleanup_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/cleanup"

[[runners]]
name = "terraform/gcp"
limit = 200
url = "https://gitlab.com/"
token = "{{ redhat_terraform_gcp_token }}"
executor = "custom"
builds_dir = "~/builds-gcp"
cache_dir = "~/cache"
[runners.custom_build_dir]
[runners.cache]
[runners.cache.s3]
[runners.cache.gcs]
[runners.cache.azure]
[runners.custom]
prepare_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/prepare"
prepare_exec_timeout = 43200
run_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/exec"
cleanup_exec = "/home/gitlab-runner/gitlab-ci-terraform-executor/cleanup"
