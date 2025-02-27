
#Function to add numbers

add_numbers(){
    sum=$(( $1 + $2 ))
    echo "Sum of $1 and $2 is: $sum"
}

add_numbers 10 20

check_file(){
    if [ -f "$1" ]; then
        echo "File '$1' exists."
    else
        echo "File '$1' does not exist."
    fi
}

check_file "file.sh"

system_info() {
    echo "operating system: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Disk Usage:"
    df -h | grep '^/dev/'
}

system_info
