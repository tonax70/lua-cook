#!/usr/bin/bash

OPTION="y";

MENU() {
echo -e "Choose which to view: \n";
cat "./docPrinter/menu.txt";
}

EXECUTE_PROG() {
sh -c "gfortran ./docPrinter/utils.f90 ./docPrinter/print.f90 -o ./docPrinter/print && ./docPrinter/print";
}

EXECUTE_LOOP() {
    for((;;))
    do 
        echo "Do you want to continue? (y/n): ";
        read OPTION;

        if  [[ $OPTION == 'y' || $OPTION == 'Y' ]]
        then
            EXECUTE_PROG;
        else 
            echo "Exit.";
            break;
        fi
    done 
}
if [[ $1 == "verbose" ]]
then
if [[ $1 == "verbose" && $2 == "full" ]]
then
echo "Welcome to tonax's code viewer and inspector!";
MENU;
EXECUTE_PROG;
EXECUTE_LOOP;
else
echo "Welcome to tonax's code viewer and inspector!";
EXECUTE_PROG;
EXECUTE_LOOP;
fi
else 
EXECUTE_PROG;
fi


