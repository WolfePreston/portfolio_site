import frame1 from "../../../assets/images/bigcreek/updates/old_home_screen.png";

export default function Slide3WireFrames() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="pt-30"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          Users are trying to assign tasks and hours that have been completed
          from job sites they have created.
        </p>
      </div>

      <div className="items-center flex flex-col gap-4 min-w-0">
        <img
          src={frame1}
          className="block"
          style={{ width: "70%", height: "auto" }}
          alt="Frame 1"
        />
      </div>

      <div
        className="pl-4 pb-30 flex flex-col items-start justify-end"
        style={{
          height: "100%",
        }}
      >
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText">
          When reviewing a lot of things felt like all I could do was tap or
          click similar to the web app.
        </p>
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText popUpText--delay300">
          So how did I fix this?
        </p>
      </div>
    </div>
  );
}
