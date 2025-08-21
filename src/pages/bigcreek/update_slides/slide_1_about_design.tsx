import screen from "../../../assets/images/bigcreek/updates/updated_home_screen.png";

export default function Slide1AboutDesign() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <h2 className="updatesTitle min-w-[15rem] text-left">
          About my design process
        </h2>
        <p className="updatesDescription min-w-[15rem] text-left pt-4">
          This mobile application is meant to replicate a web app for inputting
          hours that was created years ago.
        </p>
      </div>

      <div className="items-center flex flex-col">
        <img
          src={screen}
          className="block"
          style={{ width: "70%", height: "auto" }}
        />
      </div>
    </div>
  );
}
