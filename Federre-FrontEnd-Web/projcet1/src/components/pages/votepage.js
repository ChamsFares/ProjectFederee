import React, { useState } from 'react';
import Button from '../Button';
import './votepage.css';

const VotePage = () => {
  const [selected, setSelected] = useState(null);
  const [submitted, setSubmitted] = useState(false);

  const handleClick = (number) => {
    setSelected(number);
    setSubmitted(true);
  };

  const handleChange = () => {
    setSelected(null);
    setSubmitted(false);
  };

  return (
    <div className="vote-container">
      <h2>Choose your option</h2>
      {[1, 2, 3, 4, 5].map((num) => (
        <Button
          key={num}
          number={num}
          selected={selected === num}
          onClick={() => handleClick(num)}
        />
      ))}
      {submitted && (
        <button className="change-button" onClick={handleChange}>
          Change your vote
        </button>
      )}
    </div>
  );
};

export default VotePage;
