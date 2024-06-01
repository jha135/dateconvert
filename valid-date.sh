if [ "$#" -ne 3 ]
then
echo "입력값 오류"
fi

month=$1
day=$2
year=$3

if [ "$month" = "jan" ] || [ "$month" = "january" ] || [ "$month" -eq 1 ]
then
echo "Jan $day $year"

elif [ "$month" = "feb" ] || [ "$month" = "february" ] || [ "$month" -eq 2 ]
then
echo "Feb $day $year"

elif [ "$month" = "mar" ] || [ "$month" = "march" ] || [ "$month" -eq 3 ]
then
echo "Mar $day $year"

elif [ "$month" = "apr" ] || [ "$month" = "april" ] || [ "$month" -eq 4 ]
then
echo "Apr $day $year"

elif [ "$month" = "may" ] || [ "$month" -eq 5 ]
then
echo "May $day $year"

elif [ "$month" = "jun" ] || [ "$month" = "june" ] || [ "$month" -eq 6 ]
then
echo "Jun $day $year"

elif [ "$month" = "jul" ] || [ "$month" = "july" ] || [ "$month" -eq 7 ]
then
echo "Jul $day $year"

elif [ "$month" = "aug" ] || [ "$month" = "august" ] || [ "$month" -eq 8 ]
then
echo "Aug $day $year"

elif [ "$month" = "sep" ] || [ "$month" = "september" ] || [ "$month" -eq 9 ]
then
echo "Sep $day $year"

elif [ "$month" = "oct" ] || [ "$month" = "october" ] || [ "$month" -eq 10 ]
then
echo "Oct $day $year"

elif [ "$month" = "nov" ] || [ "$month" = "november" ] || [ "$month" -eq 11 ]
then
echo "Nov $day $year"
elif [ "$month" = "dec" ] || [ "$month" = "december" ] || [ "$month" -eq 12 ]
then
echo "Dec $day $year"
fi



if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ]
then
echo "윤년이다."
else
echo "윤년이 아니다."
fi



if [ "$month" = "Jan" ] || [ "$month" = "Mar" ] || [ "$month" = "May" ] || [ "$month" = "Jul" ] || [ "$month" = "Aug" ] || [ "$month" = "Oct" ] || [ "$month" = "Dec" ]
then
echo "31일까지 존재한다."

elif [ "$month" = "Apr" ] || [ "$month" = "Jun" ] || [ "$month" = "Sep" ] || [ "$month" = "Nov" ]
then
echo "30일까지 존재한다."

elif [ "$month" = "Feb" ]
then
    if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ]
    then
    echo "윤년이므로 29일까지 존재한다.
    else
    echo "28일까지 존재한다."
fi