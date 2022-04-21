function install() {
    echo "Installing the program"
    curl -sL -O https://raw.githubusercontent.com/plantPM/core/main/src/main.c
    curl -sL https://raw.githubusercontent.com/plantPM/core/main/build.sh
    chmod +x build.sh
    ./build.sh
    rm main.c
}

install