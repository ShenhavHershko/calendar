common_leap() {
local num="$1"
if (($num % 4 != 0)) ;
then
echo "Common Year"
elif (($num % 100 != 0)) ;
then
echo "Leap Year"
elif (($num % 400 != 0)) ;
then
echo "Common Year"
else
echo "Leap Year"
fi
}

common_leap "$1"

