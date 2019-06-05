#!/bin/sh
set -e

useradd centos
usermod -aG wheel centos
sudo -u centos ssh-keygen -b 2048 -t rsa -f /home/centos/.ssh/id_rsa -N ''
sudo -u centos echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDARHd1Wl2Ay7FoPF6dWESZYl5Li0oDA/rHJvappsQvQiT3gdTNZdxoyBYtCrXN8dGXhIlSj6CPl1WO0N938vCVmUurnyyy7DaVuhLTy0HgvlrDgCFdJB6lwGWqH7SWHwU8iHrWuIfq/Ok1ChWeiXLffi9kIsmpUZNUIHEAw2CDJWqZXnuDt1SQy7wAeFOBT47bpW/95mmDGN+gnroy2fIFkMdPj0NiPRudhVOZ3L3GcCJudR37bGF4KsBBNiWHx71dKeUG8ptDFXwK/YQkzUjxmIxs+PMMufXbabTs2yD/dmOjrXbLX0nBMgZHumDXnXAKq51Q5rQm/GAg2gCWTLR3 jojachura@falabella.cl" >> /home/centos/.ssh/authorized_keys
usermod -aG docker centos
echo "%centos ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/centos