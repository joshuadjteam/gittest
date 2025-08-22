#!/bin/bash

# Define the function to display the menu
show_menu() {
    echo "Welcome to GitTest VPS"
    echo "A DarCodr Special"
    echo ""
    echo "1 ) update your device (runs sudo apt update -y && sudo apt upgrade -y)"
    echo "2 ) setup your device for VPS (runs the code from what I typed earlier)"
    echo "3 ) Start Chrome Remote Desktop (runs sudo service chrome-remote-desktop restart)"
    echo ""
    echo -n "Please enter your choice [1-3]: "
}

# The main function that handles user choice
main_function() {
    local choice
    read choice
    case $choice in
        1)
            echo "Updating and upgrading your device..."
            sudo apt update -y && sudo apt upgrade -y
            ;;
        2)
            echo "Setting up your device for VPS..."
            
            # The comprehensive script you provided earlier
            sudo apt update -y && sudo apt upgrade -y
            sudo apt install xfce4 xfce4-goodies -y
            sudo apt install gnome-tweaks -y
            sudo apt-get update
            sudo apt-get install dbus-x11 -y
            sudo apt-get update
            sudo apt-get install --reinstall dbus -y
            wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
            sudo apt install ./chrome-remote-desktop_current_amd64.deb -y
            sudo apt install -f -y
            sudo apt install ./chrome-remote-desktop_current_amd64.deb -y
            wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
            sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
            sudo apt-get update
            sudo apt-get install google-chrome-stable -y
            sudo install -d -m 0755 /etc/apt/keyrings
            wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
            gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'
            echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
            echo '
            Package: *
            Pin: origin packages.mozilla.org
            Pin-Priority: 1000
            ' | sudo tee /etc/apt/preferences.d/mozilla
            sudo apt-get update && sudo apt-get install firefox -y
            echo "Now, you will need to set-up a new account, the username for this account is 'user' and will have sudo privilages"
            sudo adduser user
            sudo usermod -aG sudo user
            
            # Switch to the new user. The script will pause here.
            su - user
            
            # --- START: New Section for Remote Desktop Code ---
            echo ""
            echo "---"
            echo "Please visit https://remotedesktop.google.com/headless and copy the entire Debian Linux code."
            echo "Paste the code here and press Enter."
            echo "---"
            echo ""
            
            # Read the code from the user and execute it
            read -p "Paste your Remote Desktop code here: " remote_code
            eval "$remote_code"
            # --- END: New Section ---
            
            # Download and run the info script
            curl -O https://github.com/joshuadjteam/gittest/releases/download/finishing-touches.sh/info.sh
            chmod +x info.sh
            ./info.sh
            ;;
        3)
            echo "Starting Chrome Remote Desktop..."
            sudo service chrome-remote-desktop restart
            echo "If you restart this VPS, run './setup.sh' and select 3"
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 3."
            ;;
    esac
}

# Loop the menu until a valid choice is made
while true; do
    show_menu
    main_function
    # Break the loop if the choice was 1, 2, or 3.
    if [[ $choice =~ ^[1-3]$ ]]; then
        break
    else
        echo "Please try again."
        echo ""
    fi
done
