function install() {
    echo "Installing the program"
    curl -OsL https://raw.githubusercontent.com/plantPM/core/main/build.sh
    curl -OsL https://raw.githubusercontent.com/plantPM/core/main/src/main.c
    chmod +x build.sh
    ./build.sh
    rm build.sh
}

install