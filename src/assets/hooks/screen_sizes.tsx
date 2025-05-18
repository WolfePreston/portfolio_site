import { useState, useEffect } from "react";

const BREAKPOINTS = {
  sm: "(max-width: 768px)",
  lg: "(max-width: 1024px)",
  specialCaseJobEmployeeComponents: "(max-width: 1040px)",
};

type BreakpointKey = keyof typeof BREAKPOINTS;

export function useMediaQuery(query: string | BreakpointKey): boolean {
  const resolvedQuery =
    typeof query === "string" && query in BREAKPOINTS
      ? BREAKPOINTS[query as BreakpointKey]
      : query;

  const [matches, setMatches] = useState(() =>
    typeof window !== "undefined"
      ? window.matchMedia(resolvedQuery).matches
      : false
  );

  useEffect(() => {
    const mediaQueryList = window.matchMedia(resolvedQuery);
    const listener = (event: MediaQueryListEvent) => setMatches(event.matches);

    mediaQueryList.addEventListener("change", listener);
    return () => mediaQueryList.removeEventListener("change", listener);
  }, [resolvedQuery]);

  return matches;
}
