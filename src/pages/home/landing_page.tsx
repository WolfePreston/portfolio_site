import { Button } from "../../assets/components/button";
import { ProjectContainer } from "./components/project_container";
import bigCreekMockup from "../../assets/images/bigcreek/bigcreekmockup.png";
import medVendorMockup from "../../assets/images/medvendor/medvendormockup.png";
import profile from "../../assets/images/profile.jpg";

export function LandingPage() {
  return (
    <div className="min-h-screen flex flex-col items-center justify-center">
      <main className="w-full max-w-7xl px-4 sm:px-8 lg:px-24 flex flex-col items-center">
        {/* Profile Section */}
        <div className="flex flex-col items-center mb-4 mt-12">
          <img
            src={profile}
            alt="Profile"
            className="w-32 h-32 sm:w-40 sm:h-40 object-cover rounded-full"
            style={{
              border: "2px solid var(--color-black)",
              boxShadow: "4px 4px 0 var(--color-black)",
            }}
          />
          <div className="p-4" style={{ transform: "rotate(4deg)" }}>
            <Button string="About" color="var(--color-green)" to="/about" />
          </div>
        </div>

        {/* Projects Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-16 items-center justify-center">
          {/* Big Creek */}
          <div className="flex flex-col items-center">
            <ProjectContainer
              title="Big Creek"
              description="Mobile Application"
              image={bigCreekMockup}
              to="/bigCreek"
            />
            <div className="p-4" style={{ transform: "rotate(6deg)" }}>
              <Button
                string="Big Creek"
                color="var(--color-green)"
                to="/bigCreek"
              />
            </div>
          </div>

          {/* MedVendor */}
          <div className="flex flex-col items-center">
            <ProjectContainer
              title="MedVendor"
              description="Mobile Application"
              image={medVendorMockup}
              to="/medVendor"
            />
            <div className="p-4" style={{ transform: "rotate(-8deg)" }}>
              <Button
                string="MedVendor"
                color="var(--color-lightRed)"
                to="/medVendor"
              />
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
