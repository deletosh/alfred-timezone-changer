# Quick Timezone Changer for Alfred

Quickly change your Mac's timezone with a simple Alfred command and get instant notification feedback.

![](https://i.imgur.com/7soGkXu.png)

## Download

**[⬇️ Download Latest Release](https://github.com/deletosh/alfred-timezone-changer/raw/refs/heads/main/Quick%20Timezone%20Changer.alfredworkflow)**

## Installation

1. Download the `.alfredworkflow` file from the link above
2. Double-click the downloaded file to install in Alfred
3. Grant necessary permissions when prompted

## Usage

Type `tz` to bring up the timezone selector, then start typing to filter timezones:

- `tz` → Shows a searchable list of all available timezones
- Start typing to filter (e.g., `tz new york`, `tz london`, `tz tokyo`)
- Select a timezone to switch to it immediately

### Popular Timezones:
The workflow will remember your most frequently used timezones and show them at the top of the list for quick access.

Some common timezones you might use:
- America/New_York (Eastern Time)
- America/Chicago (Central Time)
- America/Denver (Mountain Time)
- America/Los_Angeles (Pacific Time)
- Europe/London (GMT/BST)
- Europe/Paris (CET/CEST)
- Europe/Berlin (CET/CEST)
- Asia/Tokyo (JST)
- Asia/Shanghai (CST)
- Asia/Kolkata (IST)
- Australia/Sydney (AEST/AEDT)

## Features

- 🌎 **Searchable timezone list** - All available timezones at your fingertips
- 🔄 **Adaptive suggestions** - Most used timezones appear at the top
- ✅ **Instant timezone switching** - No confirmation dialogs
- 🔔 **Smart notifications** - Shows current date and time in new timezone
- 🔐 **Secure** - Uses macOS admin authentication
- ⚡ **Fast** - Direct system integration
- 🎯 **Simple** - Just type `tz` and select a timezone

## Requirements

- macOS 10.14 or later
- Alfred 4+ with Powerpack
- Administrator privileges (for system timezone changes)

## How It Works

The workflow uses macOS's built-in `systemsetup` command to change the system timezone. When you run the command:

1. Alfred displays a searchable list of all available timezones
2. You select your desired timezone from the list
3. The script requests admin privileges
4. System timezone is updated instantly
5. You get a notification with the current time in the new timezone

Behind the scenes, the workflow uses JavaScript's `Intl.supportedValuesOf("timeZone")` to generate a complete list of all valid timezones on your system.

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements.

## License

This project is open source and available under the [MIT License](LICENSE).
