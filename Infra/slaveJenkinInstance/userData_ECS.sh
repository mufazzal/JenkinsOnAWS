#!/bin/bash

echo '<<Starting User data Script>>'

cd /home/ec2-user/
echo "ECS_CLUSTER=${ECSClusterName}" >> /etc/ecs/ecs.config      