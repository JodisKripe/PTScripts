ports=''
with open("recon/openPorts.raw","r")as file:
    ports=file.read().replace("\n",",")
    print(ports)
