#! /bin/bashwq
# Generate ssh keys on local machine

echo | ssh-keygen -t rsa
echo | ssh-keygen -t ecdsa
echo | ssh-keygen -t ed25519 

# key  
echo| 
cat /home/trainee/.ssh/id_rsa.pub >> /home/trainee/.ssh/authorized_keys
cat /home/trainee/.ssh/id_ecdsa.pub >> /home/trainee/.ssh/authorized_keys
cat /home/trainee/.ssh/id_ed25519.pub >> /home/trainee/.ssh/authorized_keys

cat /home/didier/.ssh/authorized_keys
chmod -R 700 /home/trainee/trainee/.ssh
sudo usermod -aG wheel trainee
# ssh -l trainee 10.0.2.46  -f "pw.txt"

# scp /home/didier/.ssh/authorized_keys_didier trainee@10.0.2.46:/home/trainee/.ssh/authorized_keys_didier | echo trainee  

# sleep 10
