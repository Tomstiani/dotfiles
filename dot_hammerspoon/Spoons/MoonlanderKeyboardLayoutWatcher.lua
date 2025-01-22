UsbWatcher = nil

function UsbDeviceCallback(data)
	if data["productName"] == "Moonlander Mark I" then
		if data["eventType"] == "added" then
			if hs.keycodes.currentLayout() ~= "ABC" then
				hs.keycodes.setLayout("ABC")
			end
		elseif data["eventType"] == "removed" then
			if hs.keycodes.currentLayout() ~= "Norwegian" then
				hs.keycodes.setLayout("Norwegian")
			end
		end
	end
end

UsbWatcher = hs.usb.watcher.new(UsbDeviceCallback)
UsbWatcher:start()
