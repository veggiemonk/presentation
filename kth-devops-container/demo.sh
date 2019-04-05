ls -l /proc/self/exe

ls -l /proc/self

ps -C sleep

# proc is a pseudo filesystem meant for the kernel and userspace to share information

#cgroup in
cd /sys/fs/cgroup/memory/docker

Layers:
https://docs.docker.com/storage/storagedriver/
https://github.com/wagoodman/dive


https://docs.docker.com/develop/develop-images/multistage-build/

# type of mount
https://docs.docker.com/storage/

DEMO SCENARIO

basic  web server
containerize it
run it
try to access it
open port
try to access it
make it write to file system
show the file inside the container
restart the container
show the file inside the container
remove container and recreate it
show the file inside the container -> not found
create a volume
run it with the volumes and the port
try to access it
make it write to file system
show the file inside the container
remove container and recreate it with the volumes
show the file inside the container -> found

create a second container that mount the volume
write to that volume from the second container
display it in the first container

create a 3rd container and link it with the 2 others
(frontend) => (backend) => (database)

scale the backend
