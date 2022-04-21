function install() {
    echo "Installing the program"
    curl -OsL https://raw.githubusercontent.com/plantPM/core/main/src/main.c
    curl -OsL https://raw.githubusercontent.com/plantPM/core/main/build.sh
    chmod +x build.sh
    ./build.sh
    rm build.sh
}

install