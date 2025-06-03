# Quick Timezone Changer for Alfred

**Version 1.1.0**  
**Created by @deletosh**

## Description

Quickly change your Mac's timezone with a searchable list and instant notification feedback. No more typing complex timezone names manually - simply search and select from all available timezones.

## Features

- 🌎 **Searchable timezone list** - Browse all available timezones with intelligent filtering
- 🔄 **Smart suggestions** - Most frequently used timezones bubble to the top
- ✅ **Instant switching** - Direct system integration with no confirmation dialogs
- 🔔 **Rich notifications** - Shows current date and time in the new timezone
- 🔐 **Secure authentication** - Uses macOS admin privileges safely
- ⚡ **Fast performance** - Optimized for quick timezone changes
- 🎯 **Simple interface** - Just type `tz` and select

## Usage

1. **Activate Alfred** and type `tz`
2. **Search timezones** by typing any part of the timezone name (e.g., "new york", "london", "tokyo")
3. **Select a timezone** from the filtered list
4. **Authenticate** when prompted (required for system changes)
5. **Get confirmation** via notification with current time in new timezone

## Examples

- `tz lag` → Shows Lagos, etc.
- `tz new` → Shows New York, New Delhi, etc.
- `tz london` → Shows Europe/London
- `tz pacific` → Shows America/Los_Angeles
- `tz tokyo` → Shows Asia/Tokyo

## Requirements

- **macOS:** 10.14 (Mojave) or later
- **Alfred:** 4.0+ with Powerpack license
- **Permissions:** Administrator privileges (for system timezone changes)

## Troubleshooting

**Permission Denied Error:**
- Ensure you have administrator privileges on your Mac
- Enter your admin password when prompted

**Timezone Not Found:**
- All timezones are validated from the system's available list
- If a timezone doesn't appear, it may not be supported on your macOS version

**Notifications Not Showing:**
- Check System Preferences → Notifications → Alfred
- Ensure notifications are enabled for Alfred

## Privacy & Security

This workflow:
- Only accesses system timezone settings
- Requires explicit admin authentication for changes
- Does not collect or transmit any personal data
- Uses only standard macOS system commands

## Support

For issues, suggestions, or contributions:

**GitHub Repository:** https://github.com/deletosh/alfred-timezone-changer  
**Issues:** https://github.com/deletosh/alfred-timezone-changer/issues

## Credits

**Developer:** @deletosh  
**License:** MIT License  
**Built with:** Alfred Workflow framework, macOS system tools

## Changelog

### Version 1.1.0
- Added searchable timezone list with Script Filter
- Improved notification system with Post Notification
- Enhanced user experience with autocomplete and smart filtering
- Better error handling and debugging output

### Version 1.0.0
- Initial release with basic timezone changing functionality