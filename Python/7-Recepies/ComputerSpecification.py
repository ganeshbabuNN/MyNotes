
Using platform
==============
pip install platform

import platform
 
my_system = platform.uname()
 
print(f"System: {my_system.system}")
print(f"Node Name: {my_system.node}")
print(f"Release: {my_system.release}")
print(f"Version: {my_system.version}")
print(f"Machine: {my_system.machine}")
print(f"Processor: {my_system.processor}"

Using WMI module (only for Windows):
====================================
pip install wmi

import wmi
 
c = wmi.WMI()    
my_system = c.Win32_ComputerSystem()[0]
 
print(f"Manufacturer: {my_system.Manufacturer}")
print(f"Model: {my_system. Model}")
print(f"Name: {my_system.Name}")
print(f"NumberOfProcessors: {my_system.NumberOfProcessors}")
print(f"SystemType: {my_system.SystemType}")
print(f"SystemFamily: {my_system.SystemFamily}")


Using os module (only for Unix):
================================
import os
 
print(os.uname())

Using psutil module:
====================
pip install psutil

import psutil
 
print(f"Memory :{psutil.virtual_memory()}")



Detailed informations
======================
import subprocess
 
# traverse the info
Id = subprocess.check_output(['systeminfo']).decode('utf-8').split('\n')
new = []
 
# arrange the string into clear info
for item in Id:
    new.append(str(item.split("\r")[:-1]))
for i in new:
    print(i[2:-2])