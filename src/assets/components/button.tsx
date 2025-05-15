import { useNavigate } from "react-router-dom";

type ButtonProps = {
  string: string;
  color: string;
  to?: string;
  skew: string;
  negativeSkew: boolean;

  onClick?: () => void;
};

export const Button = ({
  string,
  color,
  to,
  onClick,
  skew,
  negativeSkew,
}: ButtonProps) => {
  const navigate = useNavigate();

  return (
    <button
      style={{
        background: color,
        color: "var(--color-white)",
        border: "2px solid var(--color-black)",
        boxShadow: "4px 4px var(--color-black)",
        borderRadius: "0",
        transform: negativeSkew ? `skewX(-${skew})` : `skewX(${skew})`,
        cursor: "pointer",
      }}
      className="px-4 py-2 font-bold"
      onClick={to ? () => navigate(to) : onClick}
    >
      <div
        style={{
          transform: negativeSkew ? `skewX(${skew})` : `skewX(-${skew})`,
        }}
      >
        {string}
      </div>
    </button>
  );
};
