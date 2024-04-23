# Terraform-Jenkins-Bash-Ansible-Docker-CI-CD-Pipeline

![image](https://github.com/Keerthibb/Terraform-Jenkins-Ansible-Docker-CI-CD-Pipeline/assets/92278245/21d9de1a-316b-43b9-8324-6d962d848ea1)


![image](https://github.com/Keerthibb/Terraform-Jenkins-Ansible-Docker-CI-CD-Pipeline/assets/92278245/fab05cd8-5fcb-4e8b-8770-543cc9078566)

Started by GitHub push by Keerthibb
Running as SYSTEM
Building in workspace /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline
The recommended git tool is: NONE
No credentials specified
 > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/Keerthibb/Website-Repo.git # timeout=10
Fetching upstream changes from https://github.com/Keerthibb/Website-Repo.git
 > git --version # timeout=10
 > git --version # 'git version 2.34.1'
 > git fetch --tags --force --progress -- https://github.com/Keerthibb/Website-Repo.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision dc3eeea010a0dd2db79edf562d2ff0f066470cab (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f dc3eeea010a0dd2db79edf562d2ff0f066470cab # timeout=10
Commit message: "Update index.html"
 > git rev-list --no-walk 19d3d3929276b77b54768047c6b127abff6febc4 # timeout=10
[ansible-jenkins-docker-pipeline] $ /bin/sh -xe /tmp/jenkins8014243190851415074.sh
+ scp -r /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/Dockerfile /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/README.md /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/about.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/booking.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/bootstrap-restaurant-template.jpg /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/contact.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/css /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/img /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/index.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/js /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/lib /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/menu.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/scss /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/service.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/team.html /var/lib/jenkins/workspace/ansible-jenkins-docker-pipeline/testimonial.html root@44.204.184.210:~/project
+ ansible-playbook /var/lib/jenkins/playbook/deployment.yml

PLAY [Build and Deploy Docker container] ***************************************

TASK [Stopping Docker container] ***********************************************
changed: [server]

TASK [Removing Docker container] ***********************************************
changed: [server]

TASK [Removing Docker image] ***************************************************
changed: [server]

TASK [Building Docker Image] ***************************************************
changed: [server]

TASK [Creating the container] **************************************************
changed: [server]

PLAY RECAP *********************************************************************
server                     : ok=5    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

Finished: SUCCESS
