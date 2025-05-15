import { Routes, Route } from "react-router-dom";
import { LandingPage } from "../src/pages/home/landing_page";
import { AboutPage } from "../src/pages/about/about_page";
import { BigCreekPage } from "./pages/bigcreek/big_creek_page";
import { MedVendorPage } from "./pages/medvendor/med_vendor_page";
import { Navigation } from "../src/assets/components/navbar";
import { Footer } from "../src/assets/components/footer";
import { ScrollToTop } from "./assets/hooks/scroll_to_top";

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
      <ScrollToTop />
      <Routes>
        <Route path="/portfolio_site" element={<LandingPage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route path="/bigCreek" element={<BigCreekPage />} />
        <Route path="/medVendor" element={<MedVendorPage />} />
      </Routes>
    </Layout>
  );
}

export default App;
