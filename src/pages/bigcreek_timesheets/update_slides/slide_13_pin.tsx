import screen from "../../../assets/images/bigcreek/updates/pinned2.png";

export default function Slide13Pin() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          Another easy solution I implemented,
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-left">Pin it </h2>
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
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText">
          Anywhere a user needs to use an element often...
        </p>
        <p className="updatesDescription max-w-[20rem] text-left pb-12 popUpText popUpText--delay300">
          They can swipe to the right and tap the pin to always find it at the
          top of the list.
        </p>
      </div>
    </div>
  );
}
