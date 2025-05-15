import { ParallelogramTextbox } from "../../assets/components/parallelogram_textbox";
import profile from "../../assets/images/profile.jpg";
import StickyNote from "../../assets/components/sticky_note";
import { useEffect, useState } from "react";

export function AboutPage() {
  const [showStickyNote, setShowStickyNote] = useState(true);

  useEffect(() => {
    const handleResize = () => {
      setShowStickyNote(window.innerWidth >= 768); // Hide if screen is smaller than 768px (md breakpoint)
    };

    handleResize();
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, []);

  return (
    <div
      style={{ minHeight: "calc(100vh - 11rem)" }}
      className="relative w-full overflow-x-hidden"
    >
      {showStickyNote && (
        <div className="absolute top-0 left-0">
          <StickyNote />
        </div>
      )}

      <div className="flex flex-col items-center justify-center w-full max-w-screen-xl gap-8 px-4 py-12 mx-auto md:flex-row sm:px-8">
        <img
          src={profile}
          alt="Profile"
          className="object-cover w-32 h-32 rounded-full sm:w-40 sm:h-40"
          style={{
            border: "2px solid var(--color-black)",
            boxShadow: "4px 4px 0 var(--color-black)",
          }}
        />

        <ParallelogramTextbox
          title="My name is Preston Wolfe"
          description="I hold a Bachelor's degree in Arts, Technology, and Emerging Communications (ATEC) with a specialization in UX Design from the University of Texas at Dallas. Over the past year, I have focused on enhancing my skills in UX design and development, working on projects that involve building responsive layouts, creating intuitive navigation systems, and optimizing user-centered applications. With a strong foundation in programming and application development, I am passionate about solving complex design challenges and contributing to projects that deliver impactful and engaging user experiences. As both a designer and front-end developer, I thrive at the intersection of creativity and functionality. My work involves translating complex user needs into elegant interfaces, emphasizing accessibility, responsiveness, and aesthetic cohesion. From wireframing and prototyping in Figma to developing dynamic components with frameworks like Flutter, I approach each project with a user-first mindset. I have experience crafting seamless navigation systems, building modular components, and implementing data-driven designs that adapt to diverse user requirements. My collaborative approach enables me to bridge the gap between design and development, ensuring that every detail, from visual layout to interactive elements, aligns with the project’s goals and the user's expectations."
          width="100%"
          height="auto"
          skew=""
          color="var(--color-offwhite)"
          className="w-full max-w-4xl"
        />
      </div>
    </div>
  );
}
