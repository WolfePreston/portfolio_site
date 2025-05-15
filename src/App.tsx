import { Routes, Route } from "react-router-dom";
import { LandingPage } from "../src/pages/home/landing_page";
import { AboutPage } from "../src/pages/about/about_page";
import { BigCreekPage } from "./pages/bigcreek/big_creek_page";
import { MedVendorPage } from "./pages/medvendor/med_vendor_page";
import { Navigation } from "../src/assets/components/navbar";
import { Footer } from "../src/assets/components/footer";

// Optional: global wrapper or layout (similar to your <Layout> pattern)
function Layout({ children }: { children: React.ReactNode }) {
  return (
    <div style={{ fontFamily: "Inter, sans-serif" }}>
      <Navigation />
      {children}
      <Footer />
    </div>
  );
}

function App() {
  return (
    <Layout>
      <Routes>
        <Route path="/" element={<LandingPage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route path="/bigCreek" element={<BigCreekPage />} />
        <Route path="/medVendor" element={<MedVendorPage />} />
      </Routes>
    </Layout>
  );
}

export default App;

// import { useState } from 'react'
// import reactLogo from './assets/react.svg'
// import viteLogo from '/vite.svg'
// import './App.css'

// function App() {
//   const [count, setCount] = useState(0)

//   return (
//     <>
//       <div>
//         <a href="https://vite.dev" target="_blank">
//           <img src={viteLogo} className="logo" alt="Vite logo" />
//         </a>
//         <a href="https://react.dev" target="_blank">
//           <img src={reactLogo} className="logo react" alt="React logo" />
//         </a>
//       </div>
//       <h1>Vite + React</h1>
//       <div className="card">
//         <button onClick={() => setCount((count) => count + 1)}>
//           count is {count}
//         </button>
//         <p>
//           Edit <code>src/App.tsx</code> and save to test HMR
//         </p>
//       </div>
//       <p className="read-the-docs">
//         Click on the Vite and React logos to learn more
//       </p>
//     </>
//   )
// }

// export default App
