# Quick Timezone Changer for Alfred

[![Release](https://img.shields.io/github/v/release/deletosh/alfred-timezone-changer)](https://github.com/deletosh/alfred-timezone-changer/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/deletosh/alfred-timezone-changer/total)](https://github.com/deletosh/alfred-timezone-changer/releases)

Quickly change your Mac's timezone with a simple Alfred command and get instant notification feedback.

## Download

**[⬇️ Download Latest Release](https://github.com/deletosh/alfred-timezone-changer/releases/latest/download/Quick-Timezone-Changer.alfredworkflow)**

## Installation

1. Download the `.alfredworkflow` file from the link above
2. Double-click the downloaded file to install in Alfred
3. Grant necessary permissions when prompted

## Usage

Type `tz` followed by your desired timezone:

- `tz America/New_York` - Switch to Eastern Time
- `tz Europe/London` - Switch to GMT/BST
- `tz Asia/Tokyo` - Switch to Japan Time
- `tz America/Los_Angeles` - Switch to Pacific Time
- `tz Australia/Sydney` - Switch to Australian Eastern Time

### Common Timezone Examples:
```
# US Timezones
tz America/New_York        # Eastern
tz America/Chicago         # Central  
tz America/Denver          # Mountain
tz America/Los_Angeles     # Pacific

# European Timezones
tz Europe/London           # GMT/BST
tz Europe/Paris            # CET/CEST
tz Europe/Berlin           # CET/CEST

# Asian Timezones
tz Asia/Tokyo              # JST
tz Asia/Shanghai           # CST
tz Asia/Kolkata            # IST
```

## Features

- ✅ **Instant timezone switching** - No confirmation dialogs
- 🔔 **Smart notifications** - Shows current date and time in new timezone
- 🔐 **Secure** - Uses macOS admin authentication
- ⚡ **Fast** - Direct system integration
- 🎯 **Simple** - Just type `tz` and the timezone

## Requirements

- macOS 10.14 or later
- Alfred 4+ with Powerpack
- Administrator privileges (for system timezone changes)

## How It Works

The workflow uses macOS's built-in `systemsetup` command to change the system timezone. When you run the command:

1. Alfred captures your timezone input
2. The script requests admin privileges
3. System timezone is updated instantly
4. You get a notification with the current time in the new timezone

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements.

## License

This project is open source and available under the [MIT License](LICENSE).