import { Routes, Route } from "react-router-dom";
import { LandingPage } from "../src/pages/home/landing_page";
import { AboutPage } from "../src/pages/about/about_page";
import { BigCreekPage } from "./pages/bigcreek/big_creek_page";
import { MedVendorPage } from "./pages/medvendor/med_vendor_page";
import { Navigation } from "../src/assets/components/navbar";
import { Footer } from "../src/assets/components/footer";
import { ScrollToTop } from "./assets/hooks/scroll_to_top";

function Layout({ children }: { children: React.ReactNode }) {
  return (
    <div className="relative" style={{ fontFamily: "Inter, sans-serif" }}>
      <div className="relative z-30">
        <Navigation />
      </div>
      <div className="relative z-10">{children}</div>
      <div className="relative z-30">
        <Footer />
      </div>
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
