## 1. GUI Layout Updates
- [ ] 1.1 Add debug panel container node to simple_button.gui
- [ ] 1.2 Add debug text display node with scroll capability
- [ ] 1.3 Position debug panel appropriately (top-right corner)
- [ ] 1.4 Set initial visibility to hidden

## 2. Debug Log Module
- [ ] 2.1 Create debug_log.lua module for log management
- [ ] 2.2 Implement log entry storage with timestamps
- [ ] 2.3 Add toggle functionality for panel visibility
- [ ] 2.4 Implement text formatting and display updates

## 3. Button Logic Updates
- [ ] 3.1 Modify button1 callback to toggle debug panel
- [ ] 3.2 Update both button callbacks to log click events
- [ ] 3.3 Ensure existing console print functionality is preserved

## 4. GUI Script Integration
- [ ] 4.1 Import debug_log module in gui_script
- [ ] 4.2 Initialize debug panel references
- [ ] 4.3 Connect button callbacks to debug logging
- [ ] 4.4 Handle debug panel visibility state

## 5. Testing and Validation
- [ ] 5.1 Test debug panel toggle functionality
- [ ] 5.2 Verify all button clicks are logged with timestamps
- [ ] 5.3 Ensure existing button behaviors remain unchanged
- [ ] 5.4 Test in both Defold editor and HTML5 build