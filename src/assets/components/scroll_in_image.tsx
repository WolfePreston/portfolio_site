import React from "react";
import { motion, useAnimation } from "framer-motion";
import { useInView } from "react-intersection-observer";

interface ScrollInImageProps {
  src: string;
  alt: string;
  border: boolean;
  title?: string;
  description?: string;
}

const ScrollInImage: React.FC<ScrollInImageProps> = ({
  src,
  alt,
  border,
  title,
  description,
}) => {
  const controls = useAnimation();
  const [ref, inView] = useInView({
    triggerOnce: true,
    threshold: 0.5,
  });

  React.useEffect(() => {
    if (inView) {
      controls.start({
        opacity: 1,
        y: 0,
        transition: {
          duration: 0.9,
          ease: "easeOut",
        },
      });
    }
  }, [controls, inView]);

  return (
    <div className="w-full px-4 sm:px-8 flex flex-col items-center justify-center max-w-screen-xl mx-auto">
      <motion.div
        ref={ref}
        initial={{ opacity: 0, y: -100 }}
        animate={controls}
        className="w-full text-center mb-12"
      >
        {title && (
          <h1 className="text-2xl font-bold text-[var(--color-black)] mb-4">
            {title}
          </h1>
        )}
        {description && (
          <p className="text-base font-normal text-[var(--color-black)] mb-8">
            {description}
          </p>
        )}
        <img
          src={src}
          alt={alt}
          className={`w-full h-auto mx-auto ${
            border
              ? "border-2 border-[var(--color-black)] shadow-[4px_4px_0_var(--color-black)]"
              : ""
          }`}
        />
      </motion.div>
    </div>
  );
};

export default ScrollInImage;
