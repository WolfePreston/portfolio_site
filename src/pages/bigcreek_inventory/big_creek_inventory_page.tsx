import mockup from "../../assets/images/bigcreek/inventory/homescreen.png";
import badge from "../../assets/images/bigcreek/inventory/badge.png";
import vector from "../../assets/images/bigcreek/inventory/vector.png";
import bigCreekComic from "../../assets/images/bigcreek/BigCreekComic.png";
import locationScreens from "../../assets/images/bigcreek/inventory/location.png";
import popUpScreens from "../../assets/images/bigcreek/inventory/pop ups.png";

import medVendorMockup from "../../assets/images/medvendor/medvendormockup.png";
import bigCreekMockup from "../../assets/images/bigcreek/bigcreekmockup.png";

import { TitleSection } from "../../assets/components/title_section";
import { useMediaQuery } from "../../assets/hooks/screen_sizes";
import { Summary } from "../../assets/components/summary";
import { UserComic } from "../../assets/components/users_comic";
import ScrollInImage from "../../assets/components/scroll_in_image";
import { ProjectContainer } from "../home/components/project_container";
import { Button } from "../../assets/components/button";
import { ParallelogramTextbox } from "../../assets/components/parallelogram_textbox";

export function BigCreekInventoryPage() {
  return (
    <div className="flex flex-col items-center w-full">
      <div className="items-center w-full max-w-screen-xl mx-auto ">
        <div className="relative z-10">
          <TitleSection
            title="Big Creek Construction"
            description="Scanning application to time stamp deliveries and confirm location."
            Date="August 2025"
            Role="Role: Sole UX/UI Designer and Frontend Developer"
            Industry="Industry: Construction"
            tools="Tools: Figma, Flutter, Android Studio, VS Code"
            mockup={mockup}
            badge={badge}
            vector={vector}
            primarycolor="var(--color-yellow)"
            textColor="var(--color-black)"
          />
        </div>
        <div className="relative z-10">
          <Summary summary="This app enhances their delivery process by providing a scanning app for QR codes on the tickets they already print for third-party drivers. Employees can scan tickets to confirm drivers at the correct location and log the exact time the delivery is accepted." />
        </div>
        <div className="relative z-10">
          <UserComic
            userDescription="-Construction Supervisor"
            description="“Maintaining a job site means keeping moving parts in order and doing so accurately. I need a solution to keep my deliveries in check and confirm they’re at the right location.”"
            image={bigCreekComic}
            user="Employees whose age can range anywhere between 30-60 years old, who have experience in the field and are looking to quickly input hours."
            product="A mobile application that can scan QR codes on delivery tickets to confirm the location and time of delivery."
            solution="A mobile app that scans delivery tickets and uses GPS to verify the driver’s location against jobsite coordinates, logging time and place of each delivery for accurate, real-time confirmation."
            businessGoal="Improve delivery accuracy and scheduling by preventing misdeliveries, reducing delays and costs, and giving managers clear, reliable data on when and where deliveries occur."
          />
        </div>
        <ScrollInImage
          src={locationScreens}
          alt="User GPS"
          border={false}
          title="User Location"
          description="Location is the core of this app, so it’s emphasized at the top with clear indicators. On launch, users are placed at the nearest jobsite and see an icon confirming this. If they pick a different site from the list, the indicator changes to a pin to show it’s manually selected. Users can also set a default site, which loads automatically. To prevent mistakes when employees switch between jobsites, a pop-up reminds them which location is set and asks if they’d like to change it."
        />
        <ScrollInImage
          src={popUpScreens}
          alt="Pop ups"
          border={false}
          title="Notifying the User"
          description="A user can scan or manually enter a ticket number. The app then notifies them with a pop-up confirming the ticket and location, or alerts them to any errors, ensuring quick feedback and accurate deliveries."
        />

        <ParallelogramTextbox
          title="Reflection"
          description="Overall this application took about a month to build and was a fun simple project that challenged me a bit more to build something on my own. It was a great experience to structure the application allow room for scaleability. As well as managing multiple components and how they interact with each other in different states."
          width="90%"
          height="auto"
          skew="10deg"
          negativeSkew={false}
          color="var(--color-offwhite)"
          className="w-full max-w-5xl"
        />

        <div className="grid items-center justify-center grid-cols-1 gap-16 md:grid-cols-2 pt-12">
          <div className="flex flex-col items-center mb-10">
            <ProjectContainer
              title="Big Creek Time Sheets"
              description="Time Sheets Mobile Application"
              image={bigCreekMockup}
              to="/bigCreek"
              imageAdjustments={{
                width: "30rem",
                paddingTop: "1rem",
                paddingInline: "3rem",
              }}
            />
            <div className="p-4" style={{ transform: "rotate(8deg)" }}>
              <Button
                string="Big Creek Time Sheets"
                color="var(--color-darkGreen)"
                to="/bigCreek"
                skew={"20deg"}
                negativeSkew={true}
              />
            </div>
          </div>
          <div className="mb-10">
            <div className="flex flex-col items-center justify-center">
              <ProjectContainer
                title="MedVendor"
                description="Medical Mobile Application"
                image={medVendorMockup}
                to="/medVendor"
              />
              <div style={{ transform: "rotate(-8deg)" }} className="p-4">
                <Button
                  string="MedVendor"
                  color="var(--color-lightRed)"
                  to="/medVendor"
                  skew={"10deg"}
                  negativeSkew={false}
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
