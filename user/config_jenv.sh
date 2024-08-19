if [ "$(uname -s)" = "Darwin" ]; then
    echo "MacOS detected, jenv should already be installed via brew"

else
    echo "Linux detected, installing jenv manually via git clone"
    rm -rf ~/.jenv
    git clone https://github.com/jenv/jenv.git ~/.jenv
fi
