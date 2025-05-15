import { ParallelogramTextbox } from "../../../assets/components/parallelogram_textbox";
import arrow from "../../../assets/images/bigcreek/bigcreekarrow.png";
import { motion, useAnimation } from "framer-motion";
import { useInView } from "react-intersection-observer";
import { useEffect, useState } from "react";
// import textBubble from "../../../assets/images/textBubble.png";

type JobEmployeeComponentsProps = {
  mainScreen: string;
  component: string;
  title: string;
  description: string;
  negativeSkew: boolean;
  skew: string;
  imageStyle?: React.CSSProperties;
  arrowStyle?: React.CSSProperties;
  color: string;
  bonusText: string;
};

export const JobEmployeeComponents: React.FC<JobEmployeeComponentsProps> = ({
  mainScreen,
  component,
  title,
  description,
  negativeSkew,
  skew,
  imageStyle,
  color,
  bonusText,
  arrowStyle,
}) => {
  const controls = useAnimation();
  const [ref, inView] = useInView({
    threshold: 0.2,
    triggerOnce: true,
  });

  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth < 870);
    };

    handleResize(); // Initial check
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, []);

  useEffect(() => {
    if (inView) {
      controls.start((i) => ({
        opacity: 1,
        x: 0,
        transition: {
          delay: i * 0.3,
          duration: 0.5,
          ease: "easeOut",
        },
      }));
    }
  }, [controls, inView]);

  return (
    <div
      ref={ref}
      className={`flex ${
        isMobile ? "flex-col gap-8" : "flex-row gap-12"
      } items-center justify-center w-full max-w-screen-xl px-4 py-12 mx-auto`}
    >
      <motion.img
        src={mainScreen}
        alt="Homescreen"
        custom={0}
        initial={{ opacity: 0, x: -100 }}
        animate={controls}
        className="rounded-lg max-w-[18rem] w-full"
      />

      <motion.div
        custom={1}
        initial={{ opacity: 0, x: -100, y: -160 }}
        animate={controls}
        className="w-[5.5rem] z-10"
      >
        <img src={arrow} alt="arrow" style={arrowStyle} />
      </motion.div>

      <motion.div
        custom={2}
        initial={{ opacity: 0, x: -100 }}
        animate={controls}
        className="w-full max-w-lg"
      >
        <ParallelogramTextbox
          color={color}
          title={title}
          description={description}
          width="100%"
          height="auto"
          skew={skew}
          negativeSkew={negativeSkew}
          image={component}
          imageStyle={imageStyle}
          className="w-full"
        />
      </motion.div>

      <motion.div
        initial={{ opacity: 0, scale: 0 }}
        animate={inView ? { opacity: 1, scale: 1 } : {}}
        transition={{
          delay: 1.1,
          duration: 0.4,
          ease: "backOut",
        }}
        className="w-full max-w-[12rem] z-20"
      >
        <ParallelogramTextbox
          title=""
          description={bonusText}
          width="100%"
          height="auto"
          skew="10deg"
          color="var(--color-offwhite)"
          negativeSkew={negativeSkew}
          className="w-full"
        />
      </motion.div>
    </div>
  );
};
