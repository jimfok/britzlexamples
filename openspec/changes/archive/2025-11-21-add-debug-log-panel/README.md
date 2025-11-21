# Debug Log Panel Proposal for Simple Button Example

## Overview
This proposal adds a toggleable debug text log panel to the simple_button example, making button interactions visible in HTML5 builds where console output isn't accessible.

## Implementation Plan

### Architecture Diagram
```mermaid
graph TD
    A[simple_button.gui] --> B[Debug Panel GUI Nodes]
    A --> C[Existing Button Nodes]
    C --> D[Button1 - Toggle Debug Panel]
    C --> E[Button2 - Regular Click]
    D --> F[debug_log.lua Module]
    E --> F
    F --> G[Log Entry Storage]
    F --> H[Panel Visibility Control]
    F --> I[Text Display Updates]
    B --> J[Debug Text Display]
    J --> K[Timestamped Log Entries]
```

### Key Components

1. **Debug Panel GUI Elements**
   - Container node positioned in top-right corner
   - Text display node for log entries
   - Initially hidden, toggled by button1

2. **debug_log.lua Module**
   - Manages log entry storage with timestamps
   - Controls panel visibility state
   - Formats and updates text display
   - Provides toggle and logging functions

3. **Enhanced Button Callbacks**
   - Button1: Toggles debug panel + logs click
   - Button2: Logs click only
   - Both maintain existing console output

### User Experience Flow
```mermaid
sequenceDiagram
    participant User
    participant Button1
    participant Button2
    participant DebugPanel
    participant LogModule

    User->>Button1: Click
    Button1->>LogModule: Log click event
    LogModule->>DebugPanel: Toggle visibility
    DebugPanel-->>User: Show/Hide panel

    User->>Button2: Click
    Button2->>LogModule: Log click event
    LogModule->>DebugPanel: Update log display
    DebugPanel-->>User: Show new log entry
```

## Files to be Modified/Created

### New Files
- `examples/simple_button/simple_button/debug_log.lua` - Debug log management module

### Modified Files
- `examples/simple_button/simple_button/simple_button.gui` - Add debug panel GUI nodes
- `examples/simple_button/simple_button/simple_button.gui_script` - Integrate debug functionality

## Benefits
1. **Educational Value**: Makes button interactions visible in HTML5 demos
2. **Debugging Aid**: Provides real-time feedback for user interactions
3. **Non-Intrusive**: Maintains existing functionality while adding new features
4. **Reusable**: Debug module can be adapted for other examples

## Next Steps
1. Review and approve this proposal
2. Switch to code mode to implement the changes
3. Follow the tasks.md checklist for implementation
4. Test in both Defold editor and HTML5 builds