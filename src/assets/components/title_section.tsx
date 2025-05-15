type TitleProps = {
  title: string;
  description: string;
  Role: string;
  Date: string;
  Industry: string;
  tools: string;
  mockup: string;
  badge: string;
  vector: string;
  primarycolor: string;
};

export const TitleSection: React.FC<TitleProps> = ({
  title,
  description,
  Role,
  Date,
  Industry,
  tools,
  mockup,
  badge,
  vector,
  primarycolor,
}) => {
  return (
    <div className="overflow-hidden flex flex-col items-center justify-start w-full px-4 sm:px-8 max-w-screen-xl mx-auto mt-0">
      <div className="flex flex-col lg:flex-row items-start justify-center gap-6 lg:gap-12 w-full">
        {/* Left Info Panel */}
        <div
          className="relative z-0 mt-0 flex flex-col items-start justify-start pt-4 pb-4"
          style={{
            minHeight: "36rem",
            width: "100%",
            maxWidth: "22rem",
            backgroundColor: primarycolor,
            border: "2px solid var(--color-black)",
            boxShadow: "4px 4px var(--color-black)",
          }}
        >
          <h1
            className="w-full flex flex-col items-center text-center px-4 py-2 font-extrabold text-3xl border-y-2 border-black"
            style={{
              backgroundColor: "var(--color-offwhite)",
              color: "var(--color-black)",
            }}
          >
            {title}
            <p className="text-base font-normal">{Date}</p>
          </h1>

          <p className="p-4 text-base font-bold text-[var(--color-offwhite)]">
            {description}
          </p>

          <div className="flex flex-col justify-center p-6 space-y-2">
            <h2 className="text-2xl font-bold text-[var(--color-offwhite)]">
              {Role}
            </h2>
            <p className="text-sm font-bold text-[var(--color-offwhite)]">
              {Industry}
            </p>
            <p className="text-sm font-bold text-[var(--color-offwhite)]">
              {tools}
            </p>
          </div>
        </div>

        {/* Right Mockup Panel */}
        <div className="relative w-full max-w-2xl aspect-[4/3] lg:aspect-auto lg:h-[60vh] mt-6 lg:mt-6">
          <img
            src={vector}
            alt="vector background"
            className="absolute top-0 left-0 w-full h-full object-contain z-0"
          />
          <div className="relative w-full h-full z-10">
            <img
              src={mockup}
              alt="mockup"
              className="levitate w-full h-full object-contain"
            />
            <img
              src={badge}
              alt="badge"
              className="absolute bottom-4 right-4 w-28 sm:w-36 object-contain z-30"
            />
          </div>
        </div>
      </div>
    </div>
  );
};
