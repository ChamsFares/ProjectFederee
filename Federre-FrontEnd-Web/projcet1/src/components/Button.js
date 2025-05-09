import React from 'react';
import './Button.css';

const OptionButton = ({ number, selected, onClick }) => {
  return (
    <div className={`option-button ${selected ? 'selected' : ''}`} onClick={onClick}>
      <div className="circle">{number}</div>
      <div className="option-bar"></div>
    </div>
  );
};

export default OptionButton;
