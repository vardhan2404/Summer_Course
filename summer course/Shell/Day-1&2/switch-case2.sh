file=$1
case $file in 
    *.sh)
        echo "Shell File"
    ;;
    *.sol)
        echo "Soidity File"
    ;;
    *.py)
        echo "Python File"
    ;;
    *.c)
        echo "C File"
    ;;
    *.cpp)
        echo "C++ File"
    ;;
    *.java)
        echo "Java File"
    ;;
    *.js)
        echo "Java Script File"
    ;;
    *)
        echo "Unknown Type"
    ;;
esac