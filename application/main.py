import time
import paramiko
from scp import SCPClient

#Set the current value variable
current_value = 0

#Open the content of the Value file stored on the server
with open('./value', 'r') as file:
    values = file.readlines()
    for value in values:
        current_value += int(value)

#Increment of one
inc_value = current_value + 1

#Save the new value
with open('./value', 'w') as file:
    file.write(str(inc_value))

#Create SSH connection with the next server
ssh_client=paramiko.SSHClient()
ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh_client.connect(hostname="3.75.210.56", username="ubuntu", key_filename="/Users/paolo.calvino/.ssh/group-2-key")

# stdin,stdout,stderr=ssh_client.exec_command("cat value")
# print(stdout.readlines())

# ftp_client=ssh_client.open_sftp()
# ftp_client.put("./value", "/home/ubuntu/value", confirm=True)
# ftp_client.close()

#Upload the new Value file on the next server
scp = SCPClient(ssh_client.get_transport())
scp.put("./value", "/home/ubuntu/value")