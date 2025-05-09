import React from 'react';
import Sidebar from './components/Sidebar';
import ChatWindow from './components/ChatWindow';
import UserProfile from './components/UserProfile';
import './style/App.css';

const ChatPage = () => {
  return (
    <div className="chat-page">
      <Sidebar />
      <ChatWindow />
      <UserProfile />
    </div>
  );
};

export default ChatPage;
