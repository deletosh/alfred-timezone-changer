function run(argv) {
  // Get all available timezones from the system
  const timezones = Intl.supportedValuesOf("timeZone");

  return JSON.stringify({
    items: timezones.map(timezone => {
      // Extract city name for better display
      const parts = timezone.split('/');
      const city = parts[parts.length - 1].replace(/_/g, ' ');
      const region = parts.length > 1 ? parts[0] : '';

      // Create a more readable title
      let displayTitle = city;
      if (region) {
        displayTitle = `${city} (${region})`;
      }

      return {
        uid: timezone,
        title: displayTitle,
        subtitle: `Switch to ${timezone}`,
        arg: timezone,
        autocomplete: timezone,
        icon: {
          path: "icon.png"
        },
        mods: {
          alt: {
            subtitle: `Full timezone identifier: ${timezone}`,
            arg: timezone
          },
          cmd: {
            subtitle: `Copy timezone name: ${timezone}`,
            arg: timezone
          }
        }
      };
    }).sort((a, b) => a.title.localeCompare(b.title))
  });
}
