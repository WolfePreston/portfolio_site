import screen from "../../../assets/images/bigcreek/updates/updated_home_screen.png";

export default function Slide17Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          On top of this users are already scrolling and inputting so much for
          their employees hours.
        </p>
      </div>

      <div className="items-center flex flex-col">
        <img
          src={screen}
          className="block"
          style={{ width: "70%", height: "auto" }}
        />
      </div>
      <div
        className="pl-4 pb-30 flex flex-col items-start justify-end"
        style={{
          height: "100%",
        }}
      >
        <p className="updatesDescription max-w-[20rem] text-left pb-12">
          So I wanted to help them move quickly through the process and give
          them a touch more power.
        </p>
      </div>
    </div>
  );
}
