function install() {
    echo "Installing the program"
    curl -sL https://raw.githubusercontent.com/plantPM/core/main/src/main.c
    curl -sL https://raw.githubusercontent.com/plantPM/core/main/build.sh | sh
    chmod +x build.sh
    ./build.sh
    rm build.sh
}

install