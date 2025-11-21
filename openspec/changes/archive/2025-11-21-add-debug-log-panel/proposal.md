# Change: Add Debug Text Log Panel to Simple Button Example

## Why
The simple_button example currently only outputs button clicks to the console, which isn't visible in HTML5 builds. Adding a visual debug log panel will make the example more educational by showing real-time interaction feedback that users can see directly in the demo.

## What Changes
- Add a toggleable debug text log panel to the simple_button example
- Modify button1 to toggle the debug panel visibility
- Log all button click events with timestamps to the panel
- Maintain existing button functionality while adding debug capabilities
- Add visual feedback when debug panel is active

## Impact
- Affected specs: simple-button (new capability)
- Affected code: simple_button/gui_script, simple_button/gui, simple_button.lua
- Adds debug-log capability to the simple_button example