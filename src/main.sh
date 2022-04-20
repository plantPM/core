# Plant.
# Plant is a package manager.
# It uses leaves, that are simple install scripts.


#!bin/sh


function install(){
    # Read what to install.
    read -p "What to install? " package
    # Try to Install it.
    curl -sL https://raw.githubusercontent.com/plantPM/leave/main/packages/$package.sh | sh || {
        echo "Error: Package not found. Else, curl not installed or internet connection is not working."
        exit 1
    }
    echo "Installed $package"
}

"$@"