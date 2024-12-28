export GITLAB_ACCESS_TOKEN=glpat-dGhpc2lzaXNub3R0b2tlbnRobwo=.170l4a6v9
export TF_STATE_NAME=staging_state or production_state
terraform init \
    -backend-config="address=https://gitlab.com/api/v4/projects/65246347/terraform/state/$TF_STATE_NAME" \
    -backend-config="lock_address=https://gitlab.com/api/v4/projects/65246347/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="unlock_address=https://gitlab.com/api/v4/projects/65246347/terraform/state/$TF_STATE_NAME/lock" \
    -backend-config="username=whatever" \
    -backend-config="password=$GITLAB_ACCESS_TOKEN" \
    -backend-config="lock_method=POST" \
    -backend-config="unlock_method=DELETE" \
    -backend-config="retry_wait_min=5"
    