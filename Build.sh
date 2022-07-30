# Raylib linux build command by hisham "Exdra"
echo "Enter The file name : "
read File_name

echo "Enter the Excutble name : "
read Excutatble_name

gcc $File_name.c -o $Excutatble_name.out -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
