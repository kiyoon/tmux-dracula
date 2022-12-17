# Fork by Kiyoon
Changed powerline left status bg colour to light_purple.  
Changed CPU/GPU information to be 3 characters excluding decimal place.  
Changed GPU always use nvidia-smi if the command is available. (some computers have additional VGA)

Added granular icons depending on the cpu/battery percentage.  
For example:  

```tmux
set -g @dracula-cpu-usage-label "😉"
set -g @dracula-cpu-usage-label-25 "😵"
set -g @dracula-cpu-usage-label-50 "🤕"
set -g @dracula-cpu-usage-label-75 "🤯"
set -g @dracula-battery-dc-label-0 "🌱"
set -g @dracula-battery-dc-label-35 "🌿"
set -g @dracula-battery-dc-label-70 "🥕"
set -g @dracula-battery-ac-label-0 "💦🌱"
set -g @dracula-battery-ac-label-35 "💦🌿"
set -g @dracula-battery-ac-label-70 "💦🥕"
set -g @dracula-battery-ac-label "🏡"
```

# Dracula for [tmux](https://github.com/tmux/tmux/wiki)

> A dark theme for [tmux](https://github.com/tmux/tmux/wiki)

![Screenshot](./screenshot.png)

## Install

All instructions can be found at [draculatheme.com/tmux](https://draculatheme.com/tmux).

## Configuration

Configuration and options can be found at [draculatheme.com/tmux](https://draculatheme.com/tmux).

## Features

- Support for powerline
- Day, date, time, timezone
- Current location based on network with temperature and forecast icon (if available)
- Network connection status, bandwidth and SSID
- Git branch and status
- Battery percentage and AC power connection status
- Refresh rate control
- CPU usage (percentage or load average)
- RAM usage
- GPU usage
- Color code based on if prefix is active or not
- List of windows with current window highlighted
- When prefix is enabled smiley face turns from green to yellow
- When charging, 'AC' is displayed
- If forecast information is available, a ☀, ☁, ☂, or ❄ unicode character corresponding with the forecast is displayed alongside the temperature
- Spotify playback (needs the tool spotify-tui installed)
- Current kubernetes context

## Compatibility

Compatible with macOS and Linux. Tested on tmux 3.1b
FreeBSD compatibility is in development

## Team

This theme is maintained by the following person(s) and a bunch of [awesome contributors](https://github.com/dracula/tmux/graphs/contributors).

| [![Dane Williams](https://avatars2.githubusercontent.com/u/22798229?s=70&v=4",)](https://github.com/danerwilliams) | [![Ethan Edwards](https://avatars1.githubusercontent.com/u/60861925?s=70&v=4)](https://github.com/ethancedwards8) |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| [Dane Williams](https://github.com/danerwilliams)                                                                  | [Ethan Edwards](https://github.com/ethancedwards8)                                                                |

## Community

- [Twitter](https://twitter.com/draculatheme) - Best for getting updates about themes and new stuff.
- [GitHub](https://github.com/dracula/dracula-theme/discussions) - Best for asking questions and discussing issues.
- [Discord](https://draculatheme.com/discord-invite) - Best for hanging out with the community.

## License

[MIT License](./LICENSE)
