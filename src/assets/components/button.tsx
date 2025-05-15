import { useNavigate } from "react-router-dom";

type ButtonProps = {
  string: string;
  color: string;
  to?: string;
  onClick?: () => void;
};

export const Button = ({ string, color, to, onClick }: ButtonProps) => {
  const navigate = useNavigate();

  return (
    <button
      style={{
        background: color,
        color: "var(--color-white)",
        border: "2px solid var(--color-black)",
        boxShadow: "4px 4px var(--color-black)",
        cursor: "pointer",
      }}
      className="font-bold py-2 px-4"
      onClick={to ? () => navigate(to) : onClick}
    >
      {string}
    </button>
  );
};
