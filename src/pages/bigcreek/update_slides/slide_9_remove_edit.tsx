import oldScreenEdit from "../../../assets/images/bigcreek/updates/old_screen_edit2.png";

export default function Slide9IOSRemoveEdit() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          Next I looked at how we were offering options to
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-right">
          edit/remove elements.
        </h2>
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
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText popUpText--delay300">
          The initial approach was to simply add a vertical more button.
        </p>
      </div>
    </div>
  );
}
