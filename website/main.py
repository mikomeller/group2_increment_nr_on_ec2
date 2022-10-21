import os
from flask import Flask, render_template
from urllib.request import urlopen

current_server = ""
next_server = ""
with urlopen("https://public-ip-addresses-pimrn.s3.eu-central-1.amazonaws.com/server_1.txt") as ip:
    current_server = ip.read()
with urlopen("https://public-ip-addresses-pimrn.s3.eu-central-1.amazonaws.com/server_2.txt") as ip:
    next_server = ip.read()

template_dir = os.path.abspath('/home/ubuntu/website/templates/')
app = Flask("Ring-Challenge", template_folder=template_dir)


@app.route("/")
def hello_world():
    value = ""

    with open('/home/ubuntu/application/value' ,'r') as file:
        value = file.readline()
    return render_template('./counter.html', value = value, next_server = next_server.decode("utf-8"), current_server = current_server.decode("utf-8"))
    
if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
