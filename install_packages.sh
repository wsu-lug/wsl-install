#!/bin/bash
# Command variables to test against
export CPP_COMMAND="sudo apt install g++"
export CMAKE_COMMAND="sudo apt install cmake"
export DIR_COMMAND="mkdir -p src/helloworldcpp"
export CD_COMMAND="cd src/helloworldcpp"
export VISUAL_COMMAND="code ."
# Other variables to use
export CORRECT=0
if [[ "$1" == "g++" || "$1" == "--g++" ]]; then
  # Installing G++
  echo "Welcome to LUG's 223 installation help!"
  echo "Thank yout for using this script"
  echo "If you run into problems, please use or Discord to get help"
  echo "https://lug.wsu.edu/contact.html"
  echo ""
  echo ""
  echo "Let's start by installing G++"
  echo "To do this, you need to type in the command " $G++_COMMAND
  echo ""
  echo "Please enter that command now"
  # User input section
  while [[ "$CORRECT" == 0 ]]
  do
    read CPP_INPUT
    if [[ "$G++_COMMAND" == "$CPP_INPUT" ]]; then
      sudo apt install g++
      export CORRECT=1
    else
      echo "That was wrong, please try again"
      echo $CPP_COMMAND
    fi
  done
  # Reset CORRECT
  export CORRECT=0
  echo ""
  echo "G++ installation complete!"
  # Help student make the directory for the next part
  echo ""
  echo "During your G++ insallation instructions, you will be asked to make a directory"
  echo "Unfortunately, these instructions DON'T tell you how to do this"
  echo "Here we will help you so you don't get lost"
  echo ""
  echo "We will be using the 'mkdir' command with the '-p' option"
  echo "This option allows you to create multiple directories under each other"
  echo ""
  echo "Please enter the command " $DIR_COMMAND
  # User input section
  while [[ $CORRECT == 0 ]]
  do
    read DIR_INPUT
    if [[ "$DIR_COMMAND" == "$DIR_INPUT" ]]; then
      mkdir -p src/helloworldcpp
      export CORRECT=1
    else
      echo "That was wrong, please try again"
      echo $DIR_COMMAND
    fi
  done
  # Reset CORRECT
  export CORRECT=0
  echo ""
  echo "Directory creation completed!"
  # Next we will help student move into the directory
  echo ""
  echo "Now we need to go into the created directory"
  echo "We will use the 'cd' command to do this"
  echo ""
  echo "Please use the command " $CD_COMMAND
  while [[ $CORRECT = 0 ]]
  do
    read CD_INPUT
    if [[ "$CD_COMMAND" == "$CD_INPUT" ]]; then
      cd src/helloworldcpp
      export CORRECT=1
    else
      echo "That was wrong, please try again"
      echo $CD_COMMAND
    fi
  done
  # Reset CORRECT
  export CORRECT=0
  echo ""
  echo "Directory change complete!"
  # Have student complete G++ instructions and then come back
  echo ""
  echo "With this help, you should be able to finish the G++ installation instructions"
  echo "Please finish those instructions and then run this script as follows"
  echo "./install_packages.sh cmake"
elif [[ "$1" == "cmake" || "$1" == "--cmake" ]]; then
  # Help student install CMake
  echo "Welcome back, now we will install CMake"
  echo ""
  echo "Please enter the command " $CMAKE_COMMAND
  # User Input Section
  while [[ $CORRECT == 0 ]]
  do
    read CMAKE_INPUT
    if [[ "$CMAKE_COMMAND" == "$CMAKE_INPUT" ]]; then
      sudo apt install cmake
      export CORRECT=1
    else
      echo "That was wrong, please try again"
      echo $CMAKE_COMMAND
    fi
  done
  # Reset CORRECT
  export CORRECT=0
  echo ""
  echo "CMake installation complete!"
  # Help make sure Visual Studio Code is connected correctly
  echo ""
  echo "Now let's make sure that Visual Studio Code is setup correctly"
  echo "First, please make sure you have installed the 'Remote - WSL' extension"
  echo "https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl"
  echo ""
  echo "Once you have this installed, please hit [enter]"
  # Look for enter
  read unused
  echo ""
  echo "Now we will connect VSC with WSL"
  echo "Please enter the command " $VISUAL_COMMAND
  while [[ $CORRECT == 0 ]]
  do
    read VISUAL_INPUT
    if [[ "$VISUAL_COMMAND" == "$VISUAL_INPUT" ]]; then
      code .
      export CORRECT=1
    else
      echo "That was wrong, please try again"
      echo $VISUAL_COMMAND
    fi
  done
  # Reset CORRECT
  export CORRECT=0
  echo ""
  echo "Visual connection completed!"
  # Wrap up
  echo ""
  echo "You are now ready to complete the rest of the CMake instructions"
  echo "If you need any more help, please contact us"
  echo "https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl"
  echo ""
  echo "Thanks for using our program!"
elif [[ $1 == "help || $1 == "--help" ]]; then
  echo "Options"
  echo ""
  echo "g++       Help installing G++ (start here)"
  echo "cmake     Help insatlling CMake (end here)"
  echo "help      Prints this help message"
else
  echo "Please enter an valid option"
  echo "Use the 'help' option for a list"
fi
