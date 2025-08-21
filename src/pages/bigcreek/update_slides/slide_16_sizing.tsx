import screen from "../../../assets/images/bigcreek/updates/updated_tasks_remove.png";

export default function Slide16Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          Instead of scrolling to the bottom of a card each time to add a task,
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
          I split the buttons up into the lists to make them more accessible.
        </p>
      </div>
    </div>
  );
}
