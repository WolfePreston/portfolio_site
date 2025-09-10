import oldScreenEdit from "../../../assets/images/bigcreek/updates/updated_tasks_remove.png";

export default function Slide10IOSRemoveEdit() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="pt-50"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          This was useful for developers to know when a user was updating
          information
        </p>
        <p className="updatesDescription max-w-[15rem] text-left pt-30">
          But a pain point for users because it can turn into endless taps
        </p>
      </div>

      <div className="items-center flex flex-col">
        <img
          src={oldScreenEdit}
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
          I updated the process by finding different places to save progress and
          implementing a swipe to delete.
        </p>
      </div>
    </div>
  );
}
