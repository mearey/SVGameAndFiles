

function openLogs() {
	logsButtons = [HistoryButton, NextObjectiveButton, CharacterButton]
	for (var i = 0; i < array_length(logsButtons); ++i) {
		instance_create_layer(0,0,"UITop",logsButtons[i])
	}
}

function closeLogs() {
	logsButtons = [HistoryButton, NextObjectiveButton, CharacterButton]
	for (var i = 0; i < array_length(logsButtons); ++i) {
		removeButton(logsButtons[i])
	}
}

function removeButton(button) {
	btn = instance_find(button,0)
	if (btn) {
		instance_destroy(btn)
	}
}