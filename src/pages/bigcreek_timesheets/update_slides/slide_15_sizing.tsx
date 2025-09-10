import screen from "../../../assets/images/bigcreek/updates/old_screen_details.png";

export default function Slide15Sizing() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-left">
          Initially we started with the question of what do you want to add?
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
          but with employees that can have many tasks in a single shift this
          needed a small change.
        </p>
      </div>
    </div>
  );
}
