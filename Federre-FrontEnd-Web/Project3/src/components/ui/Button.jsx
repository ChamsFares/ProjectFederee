// src/components/ui/Button.jsx
import React from "react";

const Button = ({ children, className = "", variant = "solid", ...props }) => {
  const baseStyle =
    variant === "ghost"
      ? "bg-transparent hover:bg-gray-100"
      : "bg-blue-600 text-white hover:bg-blue-700";

  return (
    <button
      className={`px-4 py-2 rounded ${baseStyle} ${className}`}
      {...props}
    >
      {children}
    </button>
  );
};

export default Button;
