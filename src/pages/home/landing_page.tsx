import { Button } from "../../assets/components/button";
import { ProjectContainer } from "./components/project_container";
import bigCreekMockup from "../../assets/images/bigcreek/bigcreekmockup.png";
import medVendorMockup from "../../assets/images/medvendor/medvendormockup.png";
import bigCreekInventoryThumbnail from "../../assets/images/bigcreek/inventory/thumbnail.png";
import profile from "../../assets/images/profile.jpg";
import { Link } from "react-router-dom";
import { StickyNoteAnimator } from "../../assets/components/stickynote_animator";
import splat from "../../assets/lottie/splat.json";
import strike from "../../assets/lottie/strike.json";
import arrow from "../../assets/lottie/arrow.json";
import bomb from "../../assets/lottie/bomb.json";

import updates from "../../assets/images/updates.png";
import updatesArrow from "../../assets/images/bigcreek/updates/bigcreekarrow.png";
import { useMediaQuery } from "../../assets/hooks/screen_sizes";
export function LandingPage() {
  const isMobile = useMediaQuery("lg");

  return (
    <div className="flex flex-col items-center justify-center min-h-screen">
      <main className="flex flex-col items-center w-full px-4 max-w-7xl sm:px-8 lg:px-24">
        <div className="absolute z-0 w-full h-full pointer-events-none">
          <StickyNoteAnimator
            animationData={splat}
            stickyNoteColor="Green"
            randomPostion={true}
            loop={false}
          />
          <StickyNoteAnimator
            animationData={strike}
            stickyNoteColor="Pink"
            randomPostion={true}
            loop={false}
          />
          <StickyNoteAnimator
            animationData={arrow}
            stickyNoteColor="Yellow"
            randomPostion={true}
            loop={false}
          />
          <StickyNoteAnimator
            animationData={bomb}
            stickyNoteColor="Orange"
            randomPostion={true}
            loop={false}
          />
        </div>

        <div className="z-10 flex flex-col items-center mt-12 mb-4 ">
          <Link to={"/about"}>
            <img
              src={profile}
              alt="Profile"
              className="object-cover w-32 h-32 rounded-full sm:w-40 sm:h-40 profile-style"
              style={{
                border: "2px solid var(--color-black)",
              }}
            />
          </Link>
          <div className="p-4" style={{ transform: "rotate(-4deg)" }}>
            <Button
              string="About"
              color="var(--color-darkGreen)"
              to="/about"
              skew={"20deg"}
              negativeSkew={true}
            />
          </div>
        </div>
        <div className="grid items-center justify-center grid-cols-1 gap-16 md:grid-cols-2">
          <div className="flex flex-col items-center">
            <ProjectContainer
              title="Big Creek Timesheets"
              description="Timesheet Mobile Application"
              image={bigCreekMockup}
              to="/bigCreek"
            />
            <div className="p-4" style={{ transform: "rotate(6deg)" }}>
              {isMobile ? null : (
                <>
                  <Link to={"/latest_updates_big_creek"}>
                    <img
                      src={updates}
                      alt="Latest updates"
                      className="object-cover w-32 h-32 rounded-full sm:w-40 sm:h-40 profile-style"
                      style={{
                        border: "2px solid var(--color-black)",
                        rotate: "-20deg",
                        position: "absolute",
                        zIndex: 30,
                        top: "0rem",
                        left: "-20rem",
                      }}
                    />
                  </Link>
                  <img
                    src={updatesArrow}
                    className="updatesArrow"
                    style={{
                      position: "absolute",
                      zIndex: 20,
                      top: "0rem",
                      left: "-10rem",
                      rotate: "-20deg",
                    }}
                  />
                </>
              )}
              <Button
                string="Big Creek Timesheets"
                color="var(--color-green)"
                to="/bigCreek"
                skew={"20deg"}
                negativeSkew={false}
              />
            </div>
          </div>
          <div className="flex flex-col items-center">
            <ProjectContainer
              title="MedVendor"
              description="Medical Mobile Application"
              image={medVendorMockup}
              to="/medVendor"
            />
            <div className="p-4" style={{ transform: "rotate(-8deg)" }}>
              <Button
                string="MedVendor"
                color="var(--color-lightRed)"
                to="/medVendor"
                skew={"20deg"}
                negativeSkew={true}
              />
            </div>
          </div>
        </div>
        <div className="grid items-center justify-center grid-cols-1 gap-16 md:grid-cols-2 pt-12">
          <div className="flex flex-col items-center">
            <ProjectContainer
              title="Big Creek Inventory"
              description="Inventory Mobile Application"
              image={bigCreekInventoryThumbnail}
              to="/bigCreekInventory"
              imageAdjustments={{
                width: "30rem",
                paddingTop: "1rem",
                paddingInline: "3rem",
              }}
            />
            <div className="p-4" style={{ transform: "rotate(-8deg)" }}>
              <Button
                string="Big Creek Inventory"
                color="var(--color-lightRed)"
                to="/bigCreekInventory"
                skew={"20deg"}
                negativeSkew={true}
              />
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
