common_leap() {
local num="$1"
if (($num % 4 != 0)) ;
then
echo "Common Year"
flag=0
elif (($num % 100 != 0)) ;
then
echo "Leap Year"
flag=1
elif (($num % 400 != 0)) ;
then
echo "Common Year"
flag=0
else
echo "Leap Year"
flag=1
fi
}

common_leap "$1"

day_in_month() {
arr=(31 28 31 30 31 30 31 31 30 31 30 31)
local year=$1
local month=$2
if ((month == 2)); then
if day_in_month $flag == 1; then
echo "29"
else
echo "28"
fi
else
echo "${arr[month - 1]}"
fi
}

day_in_month $1 $2
