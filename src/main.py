# Standard libraries
import os

WTI = input("What do you want to install? ")

def install(x):
    try:
        print(f"Installing {x}")
        os.system(f"curl -sL https://raw.githubusercontent.com/plantPM/leave/main/packages/{x}.sh | sh")
    except:
        print("Error. Check if curl is installed. If not, install it.\n Also, check if the package exists. Exiting...")
    

install(WTI)