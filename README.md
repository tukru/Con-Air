# Con-Air
A Bash script for automating wireless network attacks using tools like Airmon-ng, Airodump-ng, Aireplay-ng, and Aircrack-ng.

> # :exclamation: **DISCLAIMER** :exclamation:
> ## Con-Air is provided for educational purposes only. Unauthorized access to computer networks is against the law. 
> ### **Do not use this software for illegal activities.**
> The developer assumes no liability and is not responsible for any misuse or damage caused by this program.
> This document should only be used for legal and educational purposes, and it is strictly against the law to use this software.
> **I refuse any responsibility for what you do.**


Con-Air is a Bash script for educational purposes, designed to automate the process of wireless network monitoring and analysis using tools like Airmon-ng, Airodump-ng, Aireplay-ng, and Aircrack-ng.

## Dependencies

The following tools are required to run the script:

- `aircrack-ng`
- `airmon-ng`
- `airodump-ng`
- `aireplay-ng`
- `wireshark`
- `xterm`
- `tput`

These can be installed on Debian-based systems using the following command:

```bash
sudo apt-get install aircrack-ng wireshark xterm

Please consult the documentation for these tools for more information on how to install them on other types of systems.

Note: You should replace the `apt-get install` command with the appropriate command for installing these packages on the systems your users are likely to be using. Also, the `tput` command is part of the `ncurses` package, which is installed by default on most Unix-like systems, so it's not listed in the install command.

## Features

The main menu of Con-Air presents you with the following options:

1. Start Attacking
2. Start Wireshark
3. Stop Monitor Mood
4. Quit

Depending on the choice, the script carries out a specific set of actions.


## Usage

Run the script with the following command:

```bash
./con-air.sh

You will be presented with a menu. Enter the number corresponding to your choice and press Enter.
Dependencies

Con-Air requires the following tools to be installed on your system:

    Airmon-ng
    Airodump-ng
    Aireplay-ng
    Aircrack-ng
    Wireshark

Ensure these are installed and accessible from your PATH before running Con-Air.
Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

For the content im unsure about being able to post here, Check out my Utterly chaotic blog: https://WEPLAYWITHFIREHERE.blog 

