import vector from "../../assets/images/medvendor/medVendorVector.png";
import mockup from "../../assets/images/medvendor/medvendormockup.png";
import badge from "../../assets/images/medvendor/medVendorBadge.png";
import comic from "../../assets/images/medvendor/MedVendorComic.png";
import profileTitle from "../../assets/images/medvendor/Frame 379.png";
import insuranceCard from "../../assets/images/medvendor/Insurance Card.png";
import specialtyCard from "../../assets/images/medvendor/Frame 382.png";
import row from "../../assets/images/medvendor/row.png";
import row2 from "../../assets/images/medvendor/row2.png";
import camera from "../../assets/images/medvendor/cameraRed.png";
import bigCreekMockup from "../../assets/images/bigcreek/bigcreekmockup.png";
import medVendorLottie2 from "../../assets/lottie/medvendor_2.json";

import { StickyNoteAnimator } from "../../assets/components/stickynote_animator";
import ScrollInImage from "../../assets/components/scroll_in_image";
import { TitleSection } from "../../assets/components/title_section";
import { Summary } from "../../assets/components/summary";
import { UserComic } from "../../assets/components/users_comic";
import { ParallelogramComponents } from "../../assets/components/parallelogram_components";
import { ParallelogramTextbox } from "../../assets/components/parallelogram_textbox";
import { ProjectContainer } from "../home/components/project_container";
import { Button } from "../../assets/components/button";
import { useMediaQuery } from "../../assets/hooks/screen_sizes";

export function MedVendorPage() {
  const isMobile = useMediaQuery("sm");
  return (
    <div className="flex flex-col items-center justify-center w-full max-w-screen-xl px-4 mx-auto sm:px-8">
      <div className="relative z-10">
        <TitleSection
          title="MedVendor"
          description="A mobile app connecting patients with medical facilities within their network."
          Role="Sole UX/UI Designer"
          Date="Sept. 2024"
          Industry="Industry: Healthcare"
          tools="Tools: Figma, Flutter, VS Code, Android Studio"
          mockup={mockup}
          badge={badge}
          vector={vector}
          primarycolor="var(--color-lightRed)"
        />
      </div>
      <div
        style={{ zIndex: 0, position: "absolute", top: "30vh", left: "10vw" }}
      >
        <StickyNoteAnimator
          animationData={medVendorLottie2}
          stickyNoteColor={"Yellow"}
          Optionalstyle={{ marginLeft: "2rem" }}
          randomPostion={false}
          loop={false}
        />
      </div>

      <div className="relative z-10">
        <Summary summary="A growing startup for medical facilities by streamlining operations and fostering connections with physicians in their area. This platform makes it easier for patients to find the care they need. Free to download, physicians can create an account to input patient needs—such as required medical attention, insurance details, and zip code—and instantly access a tailored list of medical facilities that match those criteria." />
      </div>

      <UserComic
        description="“Where can I send a new patient for a complex medical operation, with their medical coverage, and near their home?”"
        image={comic}
        userDescription="-Physicians"
        user="Physicians looking for a quick way to connect patients with a viable option for medical facilities and services."
        product="A platform designed to seamlessly connect patients with medical facilities and services. Physicians can access and share key information—such as contacts, facility documents, and more—directly from the app."
        businessGoal="Develop an easy-to-use application with robust sharing capabilities."
        solution="Design intuitive components that leverage familiar icons and functionality, enabling profiles to showcase comprehensive facility details and easily shareable content."
      />

      <ScrollInImage
        src={row}
        alt="sticky notes image"
        border={false}
        title="Functionality at the Users Fingertips"
        description="Finding information and sharing information on Medical Facilities is the core of this app below are the components I created to help accomplish this"
      />

      <div className="flex flex-col items-center w-full gap-12">
        <ParallelogramComponents
          title="Sharing and Saving Capabilities"
          description="When a user opens a medical facility's page, the header provides two sharing options for patients: an expandable QR code for direct sharing and a share button. Additionally, users can save a facility for easy access if they visit it frequently."
          width="100%"
          height="auto"
          skew=""
          color="var(--color-lightRed)"
          image={profileTitle}
          imageStyle={{ width: "100%" }}
          column={isMobile ? true : false}
        />

        <ParallelogramComponents
          title="Insurance and Medical Specialties"
          description="The facility's page also features a list of accepted insurances. For locations that accept hundreds of plans, a search function is available to help patients quickly confirm their coverage. Additionally, all pages showcase the medical specialties and services offered at the facility."
          width="100%"
          height="auto"
          skew=""
          color="var(--color-lightRed)"
          image={insuranceCard}
          image2={specialtyCard}
          imageStyle={{ width: "100%" }}
          column={isMobile ? true : false}
        />
      </div>

      <div className="mt-12">
        <ScrollInImage
          src={row2}
          alt="HomeScreen, LoginScreen, ProfileScreen"
          border={false}
        />
      </div>

      <div className="relative z-10">
        <ParallelogramTextbox
          title="Development past the first Release"
          description="I believe this app has significant potential for growth, particularly in standardizing the information provided by facilities. For a first release, its usability is very straightforward. However, one improvement I’d like to see is an update to the search tab and its functionality. It was removed from the initial release due to backend bugs and confusion around the process of searching and filtering locations from the home screen. That said, incorporating a well-functioning search feature could greatly reduce the time needed to find a facility and enhance the overall user experience."
          width="100%"
          height="auto"
          skew="5deg"
          color="var(--color-offwhite)"
          className="w-full max-w-5xl mx-auto mt-12"
        />
      </div>

      <div className="relative z-10 flex flex-col items-center w-full max-w-screen-xl gap-8 px-4 mx-auto my-12 sm:px-8">
        <div className="flex flex-col flex-wrap items-center justify-center gap-4 md:flex-row">
          <img src={camera} className="w-24" />
          <h1 className="text-2xl font-bold text-[var(--color-black)]">
            Big Picture
          </h1>
          <h1 className="text-2xl font-bold text-[var(--color-black)] text-center md:text-left">
            User Research and Testing for Future Releases
          </h1>
        </div>

        <ParallelogramTextbox
          title="Reducing Buttons"
          description="In the Title Component, there are currently three separate buttons for sharing, liking, and scanning a QR code. A potential improvement could be condensing these into a single more button or pop-up menu to streamline the interface. However, user testing would be essential to determine whether this change maintains usability and ensures users can still easily access these functions, even though they are not removed—just consolidated into a menu."
          width="100%"
          height="auto"
          skew="5deg"
          negativeSkew={false}
          color="var(--color-offwhite)"
          className="w-full max-w-5xl"
        />

        <ParallelogramTextbox
          title="Time Spent on Facility Pages"
          description="Currently, most Medical Facility Pages tend to be long, especially for well-established facilities offering many services. This could lead to information overload and increase the time users spend navigating the page, potentially impacting the perceived ease of use and overall information structure. To improve usability, it may be worth reconsidering the number of components on each page, as well as how and what information is displayed to ensure a more efficient and user-friendly experience."
          width="100%"
          height="auto"
          skew="5deg"
          negativeSkew={true}
          color="var(--color-offwhite)"
          className="w-full max-w-5xl"
        />

        <ParallelogramTextbox
          title="Favorites Duplicates"
          description="The Favorites page is currently organized by category, similar to the website platform. While this approach makes sense initially, an issue arises when facilities appear in multiple—or in some cases, all—categories. To better understand how users interact with favorites, user research would be valuable in analyzing how they use the feature, including the average number of saved facilities. Based on these insights, it may be worth considering removing category-based filtering and instead displaying all favorited facilities in a straightforward list."
          width="100%"
          height="auto"
          skew="5deg"
          negativeSkew={false}
          color="var(--color-offwhite)"
          className="w-full max-w-5xl"
        />
      </div>

      <div className="flex flex-col items-center justify-center mb-10">
        <ProjectContainer
          title="Big Creek"
          description="Mobile Application"
          image={bigCreekMockup}
          to="/bigCreek"
        />
        <div style={{ transform: "rotate(6deg)" }} className="p-4">
          <Button
            string="Big Creek"
            color="var(--color-green)"
            to="/bigCreek"
            skew={"10deg"}
            negativeSkew={true}
          />
        </div>
      </div>
    </div>
  );
}
