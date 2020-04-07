#!/usr/bin/env bash
# Functions that have something to do with folders

move_to_script_folder(){
    # Move to script folder
    script_directory="${0%/*}"
    cd "$script_directory" || exit
}

move_back_user_location(){
    # Goes back to the user location where the script
    # was call from
    cd "$USER_PWD" || exit
}

loop_folders(){
    for dir in $(find ~ -name ".git" -type d 2>&1 | grep -v "Operation not permitted")
    do
        enter_folder_and_print_inside_exit "$dir"
        printf "\n"
    done
}