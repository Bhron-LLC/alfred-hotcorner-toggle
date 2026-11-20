# Toggle Notification Center Hot Corner for Alfred

Turn the top-right Hot Corner on or off from Alfred. Type `hotcorner` and press Return.

- If the top-right corner opens Notification Center, the workflow turns it off.
- If it's off (or set to anything else), the workflow sets it to Notification Center.
- The Dock restarts to apply the change, and a notification says which way it went.

Handy when the corner keeps opening Notification Center while you work near the top of the screen, but you still want it most of the time.

## Install

1. Use Alfred with the Powerpack.
2. Download [Toggle-Notification-Center-Hot-Corner.alfredworkflow](../../raw/refs/heads/main/Toggle-Notification-Center-Hot-Corner.alfredworkflow) and open it to import it into Alfred.
3. Open Alfred and type `hotcorner`.

## How it works

`workflow/toggle.zsh` reads the setting with `defaults read com.apple.dock wvous-tr-corner`, writes `12` (Notification Center) or `0` (disabled), and runs `killall Dock`. The other corners and the rest of your Dock settings are left alone.

## License

MIT, see [LICENSE](LICENSE). Made by [Bhron](https://bhron.org/productivity/#shelf).
