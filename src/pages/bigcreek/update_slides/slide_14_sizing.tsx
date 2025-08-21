import screen from "../../../assets/images/bigcreek/updates/old_screen_details.png";

export default function Slide14Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          Beyond swiping features, there is a lot to be said for
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-left">
          screen real estate.
        </h2>
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
          and there was a lot of thought of how to display employees details...
        </p>
      </div>
    </div>
  );
}
