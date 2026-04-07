#!/usr/bin/env bash

# This experiment was created to test another way of ANSI colour codes that may be easier.
# This might also be implemented in the linux_telemetry directory.

# ----------------------------------------------------------------------------------------------------------------------------------------


## 1) COLOUR VARIABLES

###
# First I will set the colour variables with the ANSI codes
Black="30m"
Red="31m"
Green="32m"
Yellow="33m"
Blue="34m"
Purple="35m"
Cyan="36m"
White="37m"


## Now I have to set the different ANSI codes for different types of text
## Here outside of the reset, 1) colour variables or 2) colours codes will be needed next to every part!

# Setting normal text
Normal="\033[0;"		# - 1)

# Setting bold text
Bold="\033[1;"			# - 1)

# Setting underline
Under="\033[4;"			# - 1)

# Setting up the background part
Backg="\033[4"			# - 2)

# Setting up high intensity
High_Int="\033[0;9"		# - 2)

# Setting up bold high intensity
Bold_High_Int="\033[1;9"	# - 2)

# Setting up high intesity background
High_Int_Backg="\033[0;10"	# - 2)

# Setting up a reset
Reset="\033[0m"


## 2) COLOUR CODES

### I should also set different colour codes with only one character for intensity, background and high-intensity background code.
Bk="0m"
R="1m"
G="2m"
Y="3m"
B="4m"
P="5m"
C="6m"
W="7m"

# ----------------------------------------------------------------------------------------------------------------------------------------


colour_function() {

<<<<<<< HEAD
	# Quick check to see if it works
	second_part=$2
	String=$3

	if [[ $1 == "Bold" ]];then
		first_part=$Bold
		if [[ $2 == "Red" ]];then
			second_part=$Red
		fi
	fi

=======
	# setting up the characteristic first part, the colour second part and the string as variables
	first_part=${!1}
	second_part=${!2}
	String=$3

	# Text is done to combine the characteristic with the colour
>>>>>>> 18656b9 (docs: finalize R&D sandbox architecture and structure experiment documentation)
	Text="$first_part$second_part"
	string="$Text $String $Reset"
	return 0

}


<<<<<<< HEAD
echo "starting"
colour_function "Bold" "Red" "Hello World"
=======
echo "inputting string with characteristic, colour and string"

colour_function "High_Int_Backg" "G" "Hello World"
>>>>>>> 18656b9 (docs: finalize R&D sandbox architecture and structure experiment documentation)
echo -e " $string"


exit 0
