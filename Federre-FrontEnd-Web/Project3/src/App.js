import React from "react";
import "./index.css";
import Input from "./components/ui/Input";
import Button from "./components/ui/Button";
import img from "./logo.png";

import {
  Home,
  Users,
  MessageCircle,
  Globe,
  Image,
  Video,
  Share2,
  Bookmark,
  Calendar,
} from "lucide-react";


function App() {
  return (
    
    
    <div className="main-container">
      {/* Sidebar Left */}
      <div className="sidebar-left">
        {/* Profile Card */}
        <div className="card profile-card">
          <div className="profile-content">
            <div className="profile-pic"></div>
            <h2 className="profile-name">Full Name</h2>
            <p className="profile-profession">PROFESSION</p>
           </div>
          
        </div>
        

        {/* Menu */}
        <div className="card menu-card">
          <div className="menu-item">
            <Users />
            <span>Groupe</span>
          </div>
          <div className="menu-item">
            <Calendar />
            <span>Event</span>
          </div>
          <div className="menu-item">
            <Bookmark />
            <span>Enregistrement</span>
          </div>
        </div>
      </div>
        <br></br>
      {/* Main Feed */}
      <div className="main-feed">
        {/* Navigation Bar */}
        <div className="navbar">
          <div className="navbar-left">
            <img src={img} alt="Logo" className="logo" />
            <Input placeholder="Search" className="search-input" />
          </div>
          <div className="navbar-right">
            <div className="nav-item active">
              <Home /> <span>Home</span>
            </div>
            <div className="nav-item">
              <Users /> <span>Collab</span>
            </div>
            <div className="nav-item">
              <MessageCircle /> <span>Discussion</span>
            </div>
            <div className="nav-item">
              <Globe /> <span>About Us</span>
            </div>
          </div>
        </div>

        {/* Post Box */}
        <div className="card post-box">
          <div className="post-input">
            <div className="post-avatar"></div>
            <Input placeholder="Start a post" className="flex-1" />
          </div>
          <div className="post-options">
            <Button variant="ghost" className="post-btn">
              <Image /> <span>Photo</span>
            </Button>
            <Button variant="ghost" className="post-btn">
              <Video /> <span>Video</span>
            </Button>
            <Button variant="ghost" className="post-btn">
              <Share2 /> <span>Share</span>
            </Button>
          </div>
        </div>

        {/* Posts */}
        {[1, 2].map((_, idx) => (
          <div key={idx} className="card post">
            <div className="post-header">
              <div className="post-avatar-sm"></div>
              <div className="post-author">Full Name</div>
              <div className="post-menu">...</div>
            </div>
            <div className="post-actions">
              <span>Like</span>
              <span>Comment</span>
              <span>Share</span>
              <span>Send</span>
            </div>
          </div>
        ))}
      </div>
      <br></br>

      {/* Right Sidebar */}
      <div className="sidebar-right">
        <div className="card">
          <h3 className="news-title">INTERCLUB NEWS</h3>
        </div>
      </div>
    </div>
  );
}



export default App;
