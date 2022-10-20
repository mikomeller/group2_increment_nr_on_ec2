import time
import paramiko
from scp import SCPClient
from urllib.request import urlopen

next_server = ""
with urlopen("https://public-ip-addresses-pimrn.s3.eu-central-1.amazonaws.com/server_2.txt") as ip:
    next_server = ip.read()
    
# Set global variables
ssh_local = "/home/ubuntu/.ssh/group-2-key"

# SSH and SCP init
ssh_client=paramiko.SSHClient()
ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# Open the content of the Value file stored on the server
def read_increment_write():
    current_value = 0
    with open('/home/ubuntu/application/value', 'r') as file:
        values = file.readlines()
        for value in values:
            current_value += int(value)

    # Increment of one
    inc_value = current_value + 1

    # Save the new value
    with open('/home/ubuntu/application/value', 'w') as file:
        file.write(str(inc_value))

# Create SSH connection with the next server
def ssh_connection(host):
    global scp
    ssh_client.connect(hostname=next_server, username="ubuntu", key_filename=ssh_local)
    scp = SCPClient(ssh_client.get_transport())

# Upload the new Value file on the next server
def file_upload():
    #stdin,stdout,stderr = ssh_client.exec_command("sudo chmod 666 value")
    scp.put("/home/ubuntu/application/value", "/home/ubuntu/application/value")

def launch_script_on_next_server():
    stdin,stdout,stderr = ssh_client.exec_command("sudo python3 /home/ubuntu/application/script_for_server.py")

read_increment_write()
time.sleep(10)
ssh_connection(next_server)
file_upload()
launch_script_on_next_server()








# stdin,stdout,stderr=ssh_client.exec_command("cat value")
# print(stdout.readlines())

# ftp_client=ssh_client.open_sftp()
# ftp_client.put("./value", "/home/ubuntu/value")
# ftp_client.close()