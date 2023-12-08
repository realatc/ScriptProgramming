# BASH
# Security Tools --> ping, nmap, metasploit, wireshark


#Variables
ipAddress = "192.168.2.3"
print(ipAddress)
print(type(ipAddress))



#Data Types
L1 = ["192.168.1.100","192.168.1.101","Windows7","Windows10","8.8.8.8"]
D1 = {"OS":"Linux", "Compromised":False,"IP addresses":["10.0.1.2","168.54.65.3"]}
S1 = {"192.168.1.100","192.168.1.100",5}
T1 = ("Spring","Summer","Fall","Winter")

print(S1)



#Flow Control
# Branches
D1 = {"OS":"Linux", "Compromised":False,"IP addresses":["10.0.1.2","168.54.65.3"]}
if len(D1["IP addresses"]) > 5:
    print("System has more than 5 IPs")
elif len(D1["IP addresses"]) == 2:
    print("System has exactly 2 IPs!")
else:
    print("System has 1 IP")


#for loop
T1 = ("Spring","Summer","Fall","Winter")
print(type(T1))
for item in T1:
    print(item)


#Functions/Arguments
D1 = {"OS":"Linux", "Compromised":True,"IP addresses":["10.0.1.2","168.54.65.3"]}
def findItem(listObj):
    for key in listObj.keys():
        print(listObj[key])
        if key == "Compromised" and listObj[key] == True:
            #print("System Compromised")          
            return "System Compromised"
            break
        else:
            print("No Matching Key Found")

result = findItem(D1)
print(result)





#Slicing
L1 = ["192.168.1.100","192.168.1.101","Windows7","Windows10","8.8.8.8"]
print(L1[0:3])

#Classes
# Why use a class? What key components make up a class
# Class Name, Constructor, Attributes, Methods

#Interacting with APIs
# Why are they used? What data type is returned when interacting with an API?
