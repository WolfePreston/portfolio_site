import box from "../../../assets/images/boxOfComponents.png";
import offlineScreen from "../../../assets/images/bigcreek/OfflineData.png";
import menuOnline from "../../../assets/images/bigcreek/menu_online.png";
import menuOffline from "../../../assets/images/bigcreek/menu_offline.png";
import offlineJosite from "../../../assets/images/bigcreek/offline_jobsites.png";
import downloadingJobSite from "../../../assets/images/bigcreek/downloading_jobsite.png";
import forceDownload from "../../../assets/images/bigcreek/jobSitesForceDownload.png";
import { ParallelogramComponents } from "../../../assets/components/parallelogram_components";
import { useMediaQuery } from "../../../assets/hooks/screen_sizes";

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
  const isMobile = useMediaQuery("sm");
  return (
    <div className="flex flex-col items-center justify-center m-auto">
      <div className="flex flex-col items-center justify-center gap-4">
        <ParallelogramComponents
          title={step1}
          description={description1}
          width={"90%"}
          height={"100%"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={offlineScreen}
          imageStyle={{
            width: isMobile ? "100%" : "18rem",
            borderRadius: ".5rem",
          }}
        />
        <ParallelogramComponents
          title={step2}
          description={description2}
          width={"90%"}
          height={"100%"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={menuOffline}
          image2={menuOnline}
          image3={downloadingJobSite}
          image4={offlineJosite}
          imageStyle={{
            width: isMobile ? "100%" : "18rem",
            borderRadius: ".5rem",
          }}
        />
        <ParallelogramComponents
          title={step3}
          description={description3}
          width={"90%"}
          height={"100%"}
          skew={""}
          color={"var(--color-offwhite)"}
          image={forceDownload}
          imageStyle={{
            width: isMobile ? "100%" : "18rem",
            borderRadius: ".5rem",
          }}
        />
      </div>
      {!isMobile && (
        <img
          src={box}
          alt="image of components"
          className="w-72"
          style={{
            position: "relative",
            top: "-62rem",
            left: "-36rem",
          }}
        />
      )}
    </div>
  );
};
