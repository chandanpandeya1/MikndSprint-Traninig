#
SOURCE_DIR="/d/Mindsprint/Day 11"
backup_dir="/d/backup"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
Backup_file="backup_$timestamp.tar.gz"
 
# Create Directory if not exist
mkdir -p "$backup_dir"
 
# Convert tar file
tar -czf "$backup_dir/$Backup_file" "$SOURCE_DIR"
 