import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <nav>
          <div className="logo">ReactApp</div>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#features">Features</a></li>
            <li><a href="#about">About</a></li>
          </ul>
        </nav>
      </header>

      <section className="hero">
        <div className="hero-content">
          <h1>Welcome to Our Modern React App</h1>
          <p>Built with React and deployed on AWS</p>
          <button className="cta-button">Get Started</button>
        </div>
      </section>

      <section className="features" id="features">
        <h2>Our Features</h2>
        <div className="feature-grid">
          <div className="feature-card">
            <h3>Modern Design</h3>
            <p>Clean and responsive interface</p>
          </div>
          <div className="feature-card">
            <h3>Fast Performance</h3>
            <p>Optimized for speed</p>
          </div>
          <div className="feature-card">
            <h3>Cloud Hosted</h3>
            <p>Deployed on AWS infrastructure</p>
          </div>
        </div>
      </section>
    </div>
  );
}

export default App; 