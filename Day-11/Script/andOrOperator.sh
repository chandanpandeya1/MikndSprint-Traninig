echo "Enter Your age"
read age
echo "Are You Indian"
read citizen
if [ $age -ge 18 ] && [ $citizen=="yes" ] || [ $citizen=="YES" ]; then
    echo "You are eligible For Vote"
else 
    echo "You are not eligible For Vote"
fi