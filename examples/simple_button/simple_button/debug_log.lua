local M = {}

local log_entries = {}
local max_entries = 20
local panel_visible = false
local debug_panel_node = nil
local debug_text_node = nil

-- Initialize the debug log system
function M.init(panel_node, text_node)
	debug_panel_node = panel_node
	debug_text_node = text_node
	gui.set_enabled(debug_panel_node, false)
end

-- Add a log entry with timestamp
function M.log(message)
	local timestamp = os.date("%H:%M:%S")
	local entry = string.format("[%s] %s", timestamp, message)

	table.insert(log_entries, entry)

	-- Keep only the most recent entries
	if #log_entries > max_entries then
		table.remove(log_entries, 1)
	end

	M.update_display()
end

-- Toggle debug panel visibility
function M.toggle_panel()
	if panel_visible then
		M.hide_panel()
	else
		M.show_panel()
	end
end

-- Show the debug panel
function M.show_panel()
	if debug_panel_node then
		gui.set_enabled(debug_panel_node, true)
		gui.set_color(debug_panel_node, vmath.vector4(0, 0, 0, 0.8))
		gui.set_scale(debug_panel_node, vmath.vector3(1, 1, 1))
		panel_visible = true
		M.update_display() -- Update display when showing panel
	end
end

-- Hide the debug panel
function M.hide_panel()
	if debug_panel_node then
		gui.set_enabled(debug_panel_node, false)
		gui.set_color(debug_panel_node, vmath.vector4(0, 0, 0, 0))
		gui.set_scale(debug_panel_node, vmath.vector3(0.8, 0.8, 1))
		panel_visible = false
	end
end

-- Update the text display with current log entries
function M.update_display()
	if debug_text_node and panel_visible then
		local display_text = ""
		for i, entry in ipairs(log_entries) do
			if i > 1 then
				display_text = display_text .. "\n"
			end
			display_text = display_text .. entry
		end
		gui.set_text(debug_text_node, display_text)
	end
end

-- Check if panel is currently visible
function M.is_visible()
	return panel_visible
end

-- Clear all log entries
function M.clear()
	log_entries = {}
	M.update_display()
end

return M