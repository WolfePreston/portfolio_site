import vector from "../../assets/images/bigcreek/bigcreekvector.png";
import mockup from "../../assets/images/bigcreek/bigcreekmockup.png";
import badge from "../../assets/images/bigcreek/bigCreekBadge.png";
import bigCreekComic from "../../assets/images/bigcreek/BigCreekComic.png";
import stickynotes from "../../assets/images/bigcreek/sticky_notes.png";
import homescreen from "../../assets/images/bigcreek/homescreen.png";
import jobsiteCreation from "../../assets/images/bigcreek/Job Site Details.png";
import employeeCards from "../../assets/images/bigcreek/employee_card.png";
import offlineScreens from "../../assets/images/bigcreek/rowOfflineScreens.png";
import camera from "../../assets/images/bigcreek/camera.png";
import medVendorMockup from "../../assets/images/medvendor/medvendormockup.png";

import { TitleSection } from "../../assets/components/title_section";
import { Summary } from "../../assets/components/summary";
import { UserComic } from "../../assets/components/users_comic";
import ScrollInImage from "../../assets/components/scroll_in_image";
import { Components } from "./components/components";
import { JobEmployeeComponents } from "./components/job_employee_components";
import { ParallelogramTextbox } from "../../assets/components/parallelogram_textbox";
import { ProjectContainer } from "../home/components/project_container";
import { Button } from "../../assets/components/button";
import cabin from "../../assets/lottie/cabin.json";
import wheel from "../../assets/lottie/wheel.json";
import truckoutline from "../../assets/lottie/truckoutline.json";
import coloredTruck from "../../assets/lottie/colored_truck_animation.json";

import { StickyNoteAnimator } from "../../assets/components/stickynote_animator";

export function BigCreekPage() {
  return (
    <div className="flex flex-col items-center w-full">
      <div className="w-full max-w-screen-xl px-4 mx-auto sm:px-8">
        <div
          style={{ zIndex: 0, position: "absolute", top: "20vh", left: "1vw" }}
        >
          <StickyNoteAnimator
            animationData={cabin}
            stickyNoteColor={"Green"}
            Optionalstyle={{ marginLeft: "2rem" }}
            randomPostion={false}
            loop={false}
          />
        </div>
        <div className="relative z-10">
          <TitleSection
            title="Big Creek Construction"
            description=" A mobile app that assists construction supervisors input hours while away from their office."
            Date="Oct. 2024"
            Role="Role: Sole UX/UI Designer"
            Industry="Industry: Construction"
            tools="Tools: Figma, Flutter, Android Studio, VS Code"
            mockup={mockup}
            badge={badge}
            vector={vector}
            primarycolor="var(--color-darkGreen)"
          />
        </div>

        <div className="relative z-10">
          <Summary summary="Currently supervisors must go in weekly online to input hours for their employees. In this process they need to first create the job site (location) by adding tasks that were completed, add any equipment, and then open the timesheet page where they can utilize the job site created to assign hours to employees. The current process’ design is made to minimize mistakes so that the accounting department will be able to finalize the process in a timely manner." />
        </div>

        <div style={{ zIndex: 0, position: "relative" }}>
          <StickyNoteAnimator
            animationData={wheel}
            stickyNoteColor={"Yellow"}
            randomPostion={false}
            loop={true}
          />
        </div>
        <div className="relative z-10">
          <UserComic
            userDescription="-Construction Supervisor"
            description="“I need a quick method of inputting hours and tracking my employees that does not force me to have an internet connection when I am ready to do so.”"
            image={bigCreekComic}
            user="Adults whose age can range anywhere between 30-60 years old, who have experience in the field and are looking to quickly input hours."
            product="A mobile application that is meant to improve time being used to input hours by combining 2 different sections in the Big Creek Construction employee site and allowing users to fill hours in one place accurately."
            solution="Show users locations (job sites) with their employees below and direct them with a color indicator and informational tool tips utilizing flutters built in features."
            businessGoal="Effectively condense sections in the employee site into one so inputting hours is in a simple format, errors are mitigated, and its available on a mobile platform."
          />
        </div>

        <div className="relative z-10">
          <ScrollInImage
            src={stickynotes}
            alt="sticky notes image"
            border={true}
            title="Combining Web Pages, but keeping separating with components"
            description="below are some of the solutions I implemented to streamline the website into a mobile platform"
          />
        </div>

        <div className="relative z-10">
          <JobEmployeeComponents
            mainScreen={homescreen}
            component={jobsiteCreation}
            color="var(--color-lightGreen)"
            negativeSkew={true}
            skew="10deg"
            title="Defining a Job Site"
            description="Users can select a Job Site then view details and add tasks. This structure maintains the feel of the website by keeping relevant details at the user's attention."
            imageStyle={{
              width: "16rem",
              borderRadius: "1rem",
              transform: `skewX(-10deg) translate(6rem, -1rem)`,
            }}
            arrowStyle={{
              position: "absolute",
              transform: "translate(-1.5rem, -2rem)",
            }}
            bonusText="Users are guided with the yellow buttons, that indicate a required step or predicted next step"
          />
        </div>

        <JobEmployeeComponents
          mainScreen={homescreen}
          component={employeeCards}
          color="var(--color-lightGreen)"
          negativeSkew={false}
          skew="10deg"
          title="Adding to Employee Cards"
          description="Employee cards are for the user to expand and input hours for each employee on the selected date. Adding Tasks or Equipment is a guided step after a start and end time has been established."
          imageStyle={{
            width: "16rem",
            transform: `skewX(10deg) translate(5rem, -1rem)`,
          }}
          arrowStyle={{
            position: "absolute",
            transform: "translate(-1.5rem, 2.5rem)",
          }}
          bonusText="Located below Job Sites I combined the pages together in a compact format to create an tighter flow between the two sections"
        />

        <ScrollInImage
          src={offlineScreens}
          alt="offline user flow"
          border={false}
          title="Offline Indicators"
          description="In the middle of production we questioned how we will manage data for offline users, and below are some of the steps the software engineers and I collaborated on to ensure users can work without a data connection."
        />

        <div className="relative z-10">
          <Components
            step1="Step 1"
            description1="When first logging in, users are prompted with what downloaded data will look like and how it will function."
            step2="Step 2"
            description2="Users are prompted to download data when they are connected to the internet, and a progress bar is shown to indicate how long it will take."
            step3="Step 3"
            description3="Require users to download job sites before continuing with the process to limit any issues that may appear."
          />
        </div>
        <div
          style={{
            zIndex: 0,
            position: "relative",
            top: "-30vh",
            left: "30vw",
          }}
        >
          <StickyNoteAnimator
            animationData={truckoutline}
            stickyNoteColor={"Pink"}
            Optionalstyle={{ marginLeft: "1.25rem" }}
            randomPostion={false}
            loop={true}
          />
        </div>

        <div className="relative z-10 w-full max-w-screen-xl px-4 mx-auto mt-6 sm:px-8">
          <ParallelogramTextbox
            title="Other Revisions"
            description="Where should checkpoints be placed to save progress as employees input their hours? This question arose as the team began developing a working prototype. As a designer, I found this challenge to be a valuable learning experience. Moving forward on future projects, I realize the importance of anticipating the user’s journey—whether it ends in an error or a screen lacking appropriate data. Thinking ahead for such scenarios allows me to strategically place checkpoints where data can be saved or retrieved, ensuring a smoother and more seamless experience for the user."
            width="100%"
            height="auto"
            skew="5deg"
            color="var(--color-offwhite)"
            className="w-full max-w-5xl"
          />
        </div>

        <div
          style={{
            zIndex: 0,
            position: "relative",
            top: "0vh",
            left: "-5vw",
          }}
        >
          <StickyNoteAnimator
            animationData={coloredTruck}
            stickyNoteColor={"Orange"}
            Optionalstyle={{ marginLeft: "1.25rem" }}
            randomPostion={false}
            loop={true}
          />
        </div>

        <div className="relative z-10 flex flex-col items-center w-full max-w-screen-xl gap-8 px-4 mx-auto my-12 sm:px-8">
          <div className="flex flex-row items-center justify-center gap-4 transform -translate-x-12">
            <img src={camera} className="w-24" />
            <h1 className="text-2xl font-bold text-[var(--color-black)]">
              Big Picture
            </h1>
          </div>

          <ParallelogramTextbox
            title="Expectations"
            description="This is a nuanced process that has a lot of tedious steps where users will need to input certain government required codes and tasks that were completed by specified employees and the app needed to have a smooth experience."
            width="100%"
            height="auto"
            skew="10deg"
            negativeSkew={false}
            color="var(--color-offwhite)"
            className="w-full max-w-5xl"
          />

          <ParallelogramTextbox
            title="Reality"
            description="While minimizing steps to create a smoother experience, the real time saving step will be downloading data and having it available for the user while offline and leaving hidden checkpoints within the process to save progress."
            width="100%"
            height="auto"
            skew="10deg"
            negativeSkew={true}
            color="var(--color-offwhite)"
            className="w-full max-w-5xl"
          />

          <ParallelogramTextbox
            title="Solutions"
            description="In order to work effectively and not lose any work, there is a force download that requires users to download all data for a job site (resulting in 10-100mb of data cached) allowing the application to store progress on hours input and quickly displaying data that will be needed to complete the process."
            width="100%"
            height="auto"
            skew="10deg"
            negativeSkew={false}
            color="var(--color-offwhite)"
            className="w-full max-w-5xl"
          />
        </div>

        <div className="mb-10">
          <div className="flex flex-col items-center justify-center">
            <ProjectContainer
              title="MedVendor"
              description="Mobile Application"
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
  );
}
