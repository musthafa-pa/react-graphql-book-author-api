import { useMutation, useQuery } from "@apollo/client";
import React, { useEffect } from "react";
import { CREATE_AUTHOR, GET_AUTHORS } from "../../graphql/graphql";
import { v4 as uuidv4 } from "uuid";
import { useNavigate } from "react-router-dom";

export default function Dashboard() {
  const { data, error, loading } = useQuery(GET_AUTHORS);
  const navigate = useNavigate();
  const [
    createAuthorAPI,
    { data: createData, error: createError, loading: createLoading },
  ] = useMutation(CREATE_AUTHOR);

  useEffect(() => {
    console.log("Received authors", data);
    console.log("created author", createData);
  }, [data, createData]);

  const createAuthor = (e) => {
    e.preventDefault();

    let authorInput = {};
    const elements = document.getElementById("create-author").elements;

    authorInput.author_id = uuidv4();
    authorInput.author_name = elements.author_name.value;
    authorInput.author_age = Number(elements.author_age.value);
    authorInput.author_country = elements.author_country.value;
    authorInput.total_published_works = Number(
      elements.total_published_works.value
    );
    authorInput.year_of_birth = Number(elements.year_of_birth.value);
    authorInput.photo = elements.photo.value;

    createAuthorAPI({ variables: { input: authorInput } });
  };

  const navigateAuthor = (author) => {
    navigate("/author", {
      state: { author },
    });
  };

  return (
    <div style={{ display: "flex", flexDirection: "row" }}>
      <div>
        {data &&
          data.getAuthors.map((author) => {
            return (
              <div onClick={() => navigateAuthor(author)}>
                <h3>{author.author_name}</h3>
                <p>{author.author_country}</p>
                <img src={author.photo} alt={author.author_name} />
              </div>
            );
          })}
      </div>
      <div>
        <h2>Author Information</h2>
        <form
          action="/submit_author_info"
          method="post"
          enctype="multipart/form-data"
          id="create-author"
        >
          <label for="author_name">Author Name:</label>
          <input type="text" id="author_name" name="author_name" required />
          <br />

          <label for="author_age">Author Age:</label>
          <input type="number" id="author_age" name="author_age" required />
          <br />

          <label for="author_country">Author Country:</label>
          <input
            type="text"
            id="author_country"
            name="author_country"
            required
          />
          <br />

          <label for="total_published_works">Total Published Works:</label>
          <input
            type="number"
            id="total_published_works"
            name="total_published_works"
            required
          />
          <br />
          <label for="year_of_birth">Year of birth:</label>
          <input
            type="number"
            id="year_of_birth"
            name="year_of_birth"
            required
          />
          <br />

          <label for="photo">Author Photo:</label>
          <input type="text" id="photo" name="photo" required />
          <br />

          <input
            type="submit"
            value="Submit"
            onClick={(e) => createAuthor(e)}
          />
        </form>
      </div>
    </div>
  );
}
