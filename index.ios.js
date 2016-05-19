import React from 'react';
import {
  StyleSheet,
  View,
  Text,
  AppRegistry,
  NativeAppEventEmitter,
} from 'react-native';
import RV from './reactview';

var styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#ccc',
    borderColor: '#888',
    borderWidth: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  reactview: {
    width: 250,
    height: 50,
    borderColor: '#888',
    borderWidth: 2,
    // backgroundColor: '#666',
  }
});

class RNSample extends React.Component {
  constructor() {
    super();
    var subscription = {};
    this.state = {text: ""};
  }

  componentWillMount() {
    this.subscription = NativeAppEventEmitter.addListener("traitCollectionChanged", (trait) => {
      this.setState({text: trait});
    });
  }

  render() {
    return (
      <View style={styles.container}>
        <RV hidden={false} backgroundColor={'#ccc'} text={"Changed to " + this.state.text} style={styles.reactview} />
      </View>
    );
  }

  componentWillUnmount() {
    this.subscription.remove();
  }
}

AppRegistry.registerComponent('RNSample', () => RNSample);
