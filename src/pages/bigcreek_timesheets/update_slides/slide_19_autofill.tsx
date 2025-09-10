import screen from "../../../assets/images/bigcreek/updates/updated_autofill.png";

export default function Slide19Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          Simply inputting a time for 1 task and locking it, tapping auto-fill,
          and they’re done!
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
