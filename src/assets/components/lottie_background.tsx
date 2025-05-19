import lottie from "lottie-web/build/player/lottie_light";
import { useEffect, useRef } from "react";

type LottieData = {
  animationData: object;
  opacity: number;
};

export const LottieBackground: React.FC<LottieData> = ({
  animationData,
  opacity,
}) => {
  const lottieRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const timer = setTimeout(() => {
      if (lottieRef.current) {
        lottie.loadAnimation({
          container: lottieRef.current,
          renderer: "svg",
          autoplay: true,
          animationData,
        });
      }
    });

    return () => {
      clearTimeout(timer);
      lottie.destroy();
    };
  }, [animationData]);
  return (
    <div
      ref={lottieRef}
      style={{
        opacity: opacity,
        width: "100%",
        height: "100%",
        pointerEvents: "none",
        objectFit: "fill",
        maskRepeat: "repeat",
      }}
    />
  );
};
