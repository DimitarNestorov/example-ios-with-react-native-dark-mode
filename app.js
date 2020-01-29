import React from 'react'
import { AppRegistry, StyleSheet, Text, View } from 'react-native'
import { useDarkMode, initialMode, eventEmitter, useDynamicStyleSheet, DynamicStyleSheet, DynamicValue } from 'react-native-dark-mode'

let modeFromEventEmitter = initialMode
eventEmitter.on('currentModeChanged', newMode => {
	modeFromEventEmitter = newMode
})

function RNHighScores() {
	const isDarkMode = useDarkMode()

	const styles = useDynamicStyleSheet(dynamicStyles)

    return (
		<View style={styles.container}>
			<Text style={styles.text}>initialMode: {initialMode}</Text>
			<Text style={styles.text}>modeFromEventEmitter: {modeFromEventEmitter}</Text>
			<Text style={styles.text}>isDarkMode: {isDarkMode.toString()}</Text>
		</View>
    );
}


const dynamicStyles = new DynamicStyleSheet({
	container: {
		flex: 1,
		justifyContent: 'center',
		alignItems: 'center',
		backgroundColor: new DynamicValue('#FFFFFF', '#333333'),
	},
	text: {
		color: new DynamicValue('#000000', '#FFFFFF'),
	}
});

AppRegistry.registerComponent('RNDarkModeView', () => RNHighScores);
