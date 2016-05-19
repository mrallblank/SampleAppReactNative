import { requireNativeComponent, StyleSheet } from 'react-native';
import React from 'react';

class RView extends React.Component {
  render() {
    return (
      <ReactView {...props} />
    );
  }
}

RView.propTypes = {
  hidden: React.PropTypes.bool.isRequired,
  backgroundColor: React.PropTypes.string,
  text: React.PropTypes.string,
};

var RV = requireNativeComponent("ReactView", RView);
export default RV;