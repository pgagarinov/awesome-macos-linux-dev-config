## on AWS workspaces (Ubuntu) the GUI user is different from local Linux user, as a result - sudo usermod -aG docker $USERNAME doesn't work
Possible solutions
- a temporary fix is to use `sudo usemod 666 /var/run/docker.sock`
- an alternative solution is described at https://awk.space/blog/amazon-workspaces-linux/

##  in AWS Workspaces (Ubuntu) chsh doesn't work
- one solution would be to changing shell in ~/.bashrc 
see: https://docs.aws.amazon.com/workspaces/latest/adminguide/manage_ubuntu_workspace.html#override_default_shell_ubuntu
- another one is described here: https://awk.space/blog/amazon-workspaces-linux/
