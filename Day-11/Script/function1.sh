system_info() {
    echo "operating system: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Disk Usage:"
    df -h | grep '^/dev/'
}

system_info