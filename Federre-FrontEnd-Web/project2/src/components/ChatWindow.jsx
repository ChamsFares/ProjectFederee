import React from 'react';
import './styles/ChatWindow.css';
const ChatWindow = () => {
  return (
    <div className="chat-window">
      <div className="chat-header">
        <div className="avatar"></div>
        <strong>Full Name</strong>
      </div>
      <div className="chat-body"></div>
      <div className="chat-footer">
        <button>➕</button>
        <button>GIF</button>
        <button>🖼️</button>
        <input type="text" placeholder="Aaa" />
        <button>😊</button>
      </div>
    </div>
  );
  
};

export default ChatWindow;
