day=$1
case $day in 
    Monday|Tuesday|Wednesday|Thursday|Friday)
        echo "Today is a weekday"
        ;;
    Saturday|Sunday)
        echo "Today is a weekend"
        ;;
    *)
        echo "Incorrect input"
        ;;
esac