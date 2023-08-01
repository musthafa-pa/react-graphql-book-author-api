import React, { useEffect } from "react";
import { useLocation } from "react-router-dom";

export default function Author() {
  const { state } = useLocation();

  useEffect(() => {
    console.log(state);
  }, [state]);
  return (
    <div>
      <h3>Name: {state.author.author_name}</h3>
      <p>Country: {state.author.author_country}</p>
      <p>Age: {state.author.author_age}</p>
      <img src={state.author.photo} alt={state.author.author_name} />
    </div>
  );
}
