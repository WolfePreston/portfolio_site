import updatedHomeScreen from "../../../assets/images/bigcreek/updates/updated_home_screen2.png";

export default function Slide7IOSNav() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          So I started with
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-left pt-4">
          Navigation...
        </h2>
      </div>

      <div className="items-center flex flex-col">
        <img
          src={updatedHomeScreen}
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
          Instead of using a date selection only, users can swipe left and right
          between dates.
        </p>
      </div>
    </div>
  );
}
