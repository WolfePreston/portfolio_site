import { Routes, Route } from "react-router-dom";
import { LandingPage } from "../src/pages/home/landing_page";
import { AboutPage } from "../src/pages/about/about_page";
import { BigCreekPage } from "./pages/bigcreek/big_creek_page";
import { MedVendorPage } from "./pages/medvendor/med_vendor_page";
import { Navigation } from "../src/assets/components/navbar";
import { Footer } from "../src/assets/components/footer";
import { ScrollToTop } from "./assets/hooks/scroll_to_top";
import LatestUpdatesBigCreek from "./pages/bigcreek/latest_updates_big_creek";
import { useLocation } from "react-router-dom";

function Layout({ children }: { children: React.ReactNode }) {
  const location = useLocation();
  const hideNav = location.pathname === "/latest_updates_big_creek";

  return (
    <div className="relative" style={{ fontFamily: "Inter, sans-serif" }}>
      <div className="relative z-30">{!hideNav && <Navigation />}</div>

      <div className="relative z-20">{children}</div>

      <div className="relative z-30">{!hideNav && <Footer />}</div>
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
        <Route
          path="/latest_updates_big_creek"
          element={<LatestUpdatesBigCreek />}
        />
      </Routes>
    </Layout>
  );
}

export default App;
