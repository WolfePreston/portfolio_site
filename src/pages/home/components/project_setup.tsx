import { Link } from "react-router-dom";
import type { ProjectTypeProps } from "./project_type";

export const ProjectSetup: React.FC<ProjectTypeProps> = ({ to }) => {
  return <Link to={to} />;
};
