// src/components/ui/Input.jsx
import React from "react";

const Input = ({ placeholder, className = "", ...props }) => {
  return (
    <input
      className={`border rounded px-3 py-2 outline-none focus:ring focus:border-blue-500 ${className}`}
      placeholder={placeholder}
      {...props}
    />
  );
};

export default Input;
