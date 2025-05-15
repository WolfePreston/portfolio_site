import box from "../../../assets/images/boxOfComponents.png";
import offlineScreen from "../../../assets/images/bigcreek/OfflineData.png";
import menuOnline from "../../../assets/images/bigcreek/menu_online.png";
import menuOffline from "../../../assets/images/bigcreek/menu_offline.png";
import offlineJosite from "../../../assets/images/bigcreek/offline_jobsites.png";
import downloadingJobSite from "../../../assets/images/bigcreek/downloading_jobsite.png";
import forceDownload from "../../../assets/images/bigcreek/jobSitesForceDownload.png";
import { ParallelogramComponents } from "../../../assets/components/parallelogram_components";

type ComponentProps = {
  step1: string;
  description1: string;
  step2: string;
  description2: string;
  step3: string;
  description3: string;
};

export const Components: React.FC<ComponentProps> = ({
  step1,
  description1,
  step2,
  description2,
  step3,
  description3,
}) => {
  return (
    <div className="flex flex-col items-center justify-center max-w-screen-lg w-full">
      <div className="flex flex-col items-center justify-center gap-4">
        <ParallelogramComponents
          title={step1}
          description={description1}
          width={"100%"}
          height={"30rem"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={offlineScreen}
          imageStyle={{
            width: "16rem",
            borderRadius: ".5rem",
          }}
        />
        <ParallelogramComponents
          title={step2}
          description={description2}
          width={"100%"}
          height={"30rem"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={menuOffline}
          image2={menuOnline}
          image3={downloadingJobSite}
          image4={offlineJosite}
          imageStyle={{
            width: "16rem",
            borderRadius: ".5rem",
          }}
        />
        <ParallelogramComponents
          title={step3}
          description={description3}
          width={"100%"}
          height={"30rem"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={forceDownload}
          imageStyle={{
            width: "18rem",
            borderRadius: ".5rem",
          }}
        />
      </div>
      <img
        src={box}
        alt="image of components"
        className="w-72"
        style={{
          position: "relative",
          top: "-75rem",
          left: "-40rem",
        }}
      />
    </div>
  );
};
