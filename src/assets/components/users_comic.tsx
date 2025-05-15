import speechBubble from "../images/textBubble.png";
import { ParallelogramTextbox } from "./parallelogram_textbox";
import { useMediaQuery } from "../../assets/hooks/screen_sizes";

type UserComicProps = {
  description: string;
  image: string;
  userDescription: string;
  user: string;
  product: string;
  businessGoal: string;
  solution: string;
};

export const UserComic: React.FC<UserComicProps> = ({
  description,
  image,
  userDescription,
  product,
  businessGoal,
  solution,
  user,
}) => {
  const isMobile = useMediaQuery("(max-width: 870px)");

  return (
    <div className="flex flex-col items-center justify-center w-full max-w-screen-xl px-4 py-16 mx-auto sm:px-8">
      <h1 className="text-2xl md:text-3xl font-bold text-[var(--color-black)] text-center mb-8">
        Defining the Users
      </h1>

      {/* Comic + Speech Bubble */}
      <div className="flex flex-col items-center justify-center w-full gap-8 md:flex-row">
        <img src={image} alt="Comic" className="max-w-lg w-72 sm:w-36" />

        <div className="relative w-full max-w-xl">
          {isMobile ? (
            <div>
              <ParallelogramTextbox
                title=""
                description={description}
                width=""
                height=""
                skew=""
                color="var(--color-offwhite)"
                className=""
              />
              <p className="absolute top-[10rem] right-[1.5rem] text-lg font-bold text-[var(--color-black)] max-w-xs sm:max-w-md text-right">
                {userDescription}
              </p>
            </div>
          ) : (
            <div>
              <img src={speechBubble} alt="Speech Bubble" className="w-full" />
              <p className="absolute top-[.75rem] left-[1rem] text-base font-normal m-1 text-[var(--color-black)] max-w-xs sm:max-w-md">
                {description}
              </p>
              <p className="absolute top-[5.5rem] right-[2rem] text-lg font-bold text-[var(--color-black)] max-w-xs sm:max-w-md text-right">
                {userDescription}
              </p>
            </div>
          )}
        </div>
      </div>

      <div
        className={`mt-12 w-full max-w-5xl mx-auto flex ${
          isMobile
            ? "flex-col items-center gap-8"
            : "flex-row justify-center gap-8"
        }`}
      >
        <ParallelogramTextbox
          title="Users"
          description={user}
          width="100%"
          height="100%"
          skew="20deg"
          color="var(--color-offwhite)"
          className={isMobile ? "w-full" : "w-[calc(50%-1rem)]"}
        />
        <ParallelogramTextbox
          title="Product"
          description={product}
          width="100%"
          height="100%"
          skew="20deg"
          color="var(--color-offwhite)"
          className={isMobile ? "w-full" : "w-[calc(50%-1rem)]"}
        />
      </div>

      <div
        className={`mt-12 w-full max-w-5xl mx-auto flex ${
          isMobile
            ? "flex-col items-center gap-8"
            : "flex-row justify-center gap-8"
        }`}
      >
        <ParallelogramTextbox
          title="Business Goal"
          description={businessGoal}
          width="100%"
          height="100%"
          skew="20deg"
          color="var(--color-offwhite)"
          className={isMobile ? "w-full" : "w-[calc(50%-1rem)]"}
        />
        <ParallelogramTextbox
          title="Solution"
          description={solution}
          width="100%"
          height="100%"
          skew="20deg"
          color="var(--color-offwhite)"
          className={isMobile ? "w-full" : "w-[calc(50%-1rem)]"}
        />
      </div>
    </div>
  );
};
