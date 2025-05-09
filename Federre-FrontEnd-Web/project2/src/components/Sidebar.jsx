import React from 'react';
import './styles/Sidebar.css';


const Sidebar = () => {
  return (
    <div className="sidebar">
      <div className="header">
        <h3><em>Discussion</em></h3>
        <span>💬</span>
        <span>⋯</span>
      </div>
      <div className="conversation-list">
        {[...Array(8)].map((_, i) => (
          <div className="conversation-item" key={i}></div>
        ))}
      </div>
    </div>
  );
};

export default Sidebar;
