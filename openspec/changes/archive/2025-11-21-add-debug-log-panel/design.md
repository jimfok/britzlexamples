## Context
The simple_button example needs a debug text log panel to make button interactions visible in HTML5 builds where console output isn't accessible. This enhances the educational value of the example by providing real-time visual feedback.

## Goals / Non-Goals
- Goals: 
  - Add toggleable debug panel with button click logging
  - Maintain existing button functionality
  - Provide clear timestamped event logging
  - Ensure compatibility with both Defold editor and HTML5 builds
- Non-Goals:
  - Complex debugging features (breakpoints, variable inspection)
  - Persistent log storage across sessions
  - Configurable log levels or filtering

## Decisions
- Decision: Use button1 as the toggle mechanism for the debug panel
  - Rationale: Simple and intuitive, leverages existing UI elements
  - Alternatives considered: Dedicated toggle button (adds UI complexity), keyboard shortcut (less discoverable)

- Decision: Implement debug log as a separate Lua module
  - Rationale: Promotes code organization and reusability
  - Alternatives considered: Inline implementation in gui_script (less modular), global state management (more complex)

- Decision: Position debug panel in top-right corner
  - Rationale: Doesn't interfere with existing button layout
  - Alternatives considered: Bottom (might interfere with buttons), Center (obstructs content), Left side (might conflict with future UI)

- Decision: Use GUI text node with manual line management
  - Rationale: Simple implementation, good performance for limited log entries
  - Alternatives considered: Rich text with formatting (more complex), Custom rendering (overkill for this use case)

## Risks / Trade-offs
- Risk: Debug panel might clutter the UI
  - Mitigation: Start hidden, make toggle obvious, keep panel compact
- Risk: Performance impact with many log entries
  - Mitigation: Limit log history to reasonable number (e.g., 50 entries)
- Trade-off: Simplicity vs. features
  - Decision: Prioritize simplicity for educational example

## Migration Plan
1. Add debug panel GUI elements to existing scene
2. Create debug_log.lua module with core functionality
3. Modify gui_script to integrate debug capabilities
4. Update button callbacks to use debug logging
5. Test thoroughly in both editor and HTML5 builds

## Open Questions
- Maximum number of log entries to display before scrolling/truncating?
- Font size and styling for debug text to ensure readability?
- Should timestamps include milliseconds for precision?