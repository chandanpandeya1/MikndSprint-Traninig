
echo "Enter your choice(start/stop/restart):"
read choice

case $choice in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stoping the service..."
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    *)
        echo "Invalid choice. Please enter start, stop, restart."
        ;;
esac