import { ProjectContainer } from "../../../pages/home/components/project_container";
import { Button } from "../../../assets/components/button";
import bigCreekMockup from "../../../assets/images/bigcreek/bigcreekmockup.png";
import medVendorMockup from "../../../assets/images/medvendor/medvendormockup.png";
import { IterationCcw } from "lucide-react";

type Slide20EndProps = {
  reset: () => void;
};

export default function Slide20End({ reset }: Slide20EndProps) {
  return (
    <div className="flex flex-col items-center justify-center">
      <div className="flex flex-row justify-center items-center">
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
        <div className="flex flex-col items-center">
          <ProjectContainer
            title="Big Creek"
            description="Timesheet Mobile Application"
            image={bigCreekMockup}
            to="/bigCreek"
          />
          <div className="p-4" style={{ transform: "rotate(6deg)" }}>
            <Button
              string="Big Creek"
              color="var(--color-green)"
              to="/bigCreek"
              skew={"20deg"}
              negativeSkew={false}
            />
          </div>
        </div>
      </div>
      <button
        onClick={reset}
        className="flex flex-row px-6 py-3 rounded-lg bg-white/20 hover:bg-white/30 transition mt-20 cursor-pointer"
      >
        <IterationCcw />
        Restart
      </button>
    </div>
  );
}
