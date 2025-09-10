import screen from "../../../assets/images/bigcreek/updates/updated_home_copy.png";
import hand from "../../../assets/images/bigcreek/updates/hand.png";

export default function Slide8IOSNav() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] pt-50 text-left">
          This comes in handy for users inputting hours because they can copy
          hours from one day and use it in the next
        </p>
      </div>

      <div className="items-center flex flex-col relative">
        <img
          src={hand}
          className="handSize absolute z-20"
          style={{ top: "90%", left: "10%", rotate: "25deg" }}
        />
        <img
          src={screen}
          className="relative z-10"
          style={{ width: "70%", height: "auto" }}
        />
      </div>
    </div>
  );
}
