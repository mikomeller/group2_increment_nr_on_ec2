import time
import itertools
import paramiko
from scp import SCPClient

# Set global variables
ssh_local = "/Users/paolo.calvino/.ssh/group-2-key"
servers = ["18.159.131.183", "18.192.61.173", "18.184.130.195"]

# SSH and SCP init
ssh_client=paramiko.SSHClient()
ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# Open the content of the Value file stored on the server
def read_increment_write():
    current_value = 0
    with open('./value', 'r') as file:
        values = file.readlines()
        for value in values:
            current_value += int(value)

    # Increment of one
    inc_value = current_value + 1

    # Save the new value
    with open('./value', 'w') as file:
        file.write(str(inc_value))

# Create SSH connection with the next server
def ssh_connection(host):
    global scp
    ssh_client.connect(hostname=host, username="ubuntu", key_filename=ssh_local)
    scp = SCPClient(ssh_client.get_transport())

# Upload the new Value file on the next server
def file_upload():
    # stdin,stdout,stderr = ssh_client.exec_command("sudo chmod 666 value")
    scp.put("./value", "/home/ubuntu/application/value")

# Read and print the value from next machine
def read_and_print(host):
    stdin,stdout,stderr = ssh_client.exec_command("cat value")
    print(f"{host}: " + f"{stdout.readline()}")

for host in itertools.cycle(servers):
    read_increment_write()
    ssh_connection(host)
    file_upload()
    read_and_print(host)
    time.sleep(1)






# stdin,stdout,stderr=ssh_client.exec_command("cat value")
# print(stdout.readlines())

# ftp_client=ssh_client.open_sftp()
# ftp_client.put("./value", "/home/ubuntu/value")
# ftp_client.close()