import speechBubble from "../images/textBubble.png";
import { ParallelogramTextbox } from "./parallelogram_textbox";
import { useEffect, useState } from "react";

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
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth < 870);
    };

    handleResize(); // check on load
    window.addEventListener("resize", handleResize);

    return () => window.removeEventListener("resize", handleResize);
  }, []);

  return (
    <div className="w-full px-4 sm:px-8 max-w-screen-xl mx-auto flex flex-col items-center justify-center py-16">
      <h1 className="text-2xl md:text-3xl font-bold text-[var(--color-black)] text-center mb-8">
        Defining the Users
      </h1>

      {/* Comic + Speech Bubble */}
      <div className="flex flex-col md:flex-row items-center justify-center gap-8 w-full">
        <img src={image} alt="Comic" className="w-72 sm:w-36 max-w-lg" />

        <div className="relative w-full max-w-xl">
          {isMobile ? (
            <div>
              <ParallelogramTextbox
                title={""}
                description={description}
                width={""}
                height={""}
                skew={""}
                color={"var(--color-offwhite"}
                className={""}
              />
              <p className="absolute top-[13.5rem] right-[1.5rem] text-lg font-bold text-[var(--color-black)] max-w-xs sm:max-w-md text-right">
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

      {/* Textboxes Row 1 */}
      {isMobile ? (
        <div className="flex flex-col items-center gap-8 mt-12 w-full max-w-5xl mx-auto">
          <ParallelogramTextbox
            title="Users"
            description={user}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-full"
          />
          <ParallelogramTextbox
            title="Product"
            description={product}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-full"
          />
        </div>
      ) : (
        <div className="flex flex-row justify-center gap-8 mt-12 w-full max-w-5xl mx-auto">
          <ParallelogramTextbox
            title="Users"
            description={user}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-[calc(50%-1rem)]"
          />
          <ParallelogramTextbox
            title="Product"
            description={product}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-[calc(50%-1rem)]"
          />
        </div>
      )}

      {/* Textboxes Row 2 */}
      {isMobile ? (
        <div className="flex flex-col items-center gap-8 mt-12 w-full max-w-5xl mx-auto">
          <ParallelogramTextbox
            title="Business Goal"
            description={businessGoal}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-full"
          />
          <ParallelogramTextbox
            title="Solution"
            description={solution}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-full"
          />
        </div>
      ) : (
        <div className="flex flex-row justify-center gap-8 mt-12 w-full max-w-5xl mx-auto">
          <ParallelogramTextbox
            title="Business Goal"
            description={businessGoal}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-[calc(50%-1rem)]"
          />
          <ParallelogramTextbox
            title="Solution"
            description={solution}
            width="100%"
            height="100%"
            skew="20deg"
            color="var(--color-offwhite)"
            className="w-[calc(50%-1rem)]"
          />
        </div>
      )}
    </div>
  );
};
