import screen from "../../../assets/images/bigcreek/updates/updated_autofill2.png";

export default function Slide18Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <h2 className="updatesTitle min-w-[15rem] text-left"> auto-filling</h2>
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
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText popUpText--delay100">
          This meant if they added more than 2 tasks, they could assign hours in
          40% less taps than average!
        </p>
        <p className="updatesDescription max-w-[15rem] text-left popUpText popUpText--delay300">
          Simply inputting a time for 1 task and locking it, tapping auto-fill,
          and they’re done!
        </p>
      </div>
    </div>
  );
}
