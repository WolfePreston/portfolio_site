import { useMediaQuery } from "../../assets/hooks/screen_sizes";

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
  const isMobile = useMediaQuery("sm");

  return (
    <div className="flex flex-col items-center justify-start w-full max-w-screen-xl mx-auto mt-0 overflow-hidden sm:px-8">
      <div
        className={`flex w-full items-center justify-center gap-6 ${
          isMobile ? "flex-col" : "flex-row gap-12 items-start"
        }`}
      >
        <div
          className="relative z-0 flex flex-col items-center justify-center pt-4 pb-4"
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
            className="flex flex-col items-center w-full px-4 py-2 text-3xl font-extrabold text-center border-black border-y-2"
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
        <div
          className={`relative w-full max-w-xl ${
            isMobile ? "aspect-[4/3]" : "lg:h-[60vh]"
          } mt-6`}
        >
          <img
            src={vector}
            alt="vector background"
            className="absolute top-0 left-0 z-0 object-contain w-full h-full"
          />
          <div className="relative z-10 w-full h-full">
            <img
              src={mockup}
              alt="mockup"
              className="object-contain w-full h-full levitate"
            />
            <img
              src={badge}
              alt="badge"
              className="absolute z-30 object-contain bottom-4 right-4 w-28 sm:w-36"
            />
          </div>
        </div>
      </div>
    </div>
  );
};
