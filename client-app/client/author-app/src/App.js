import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Dashboard from "./screens/dashboard/dashboard";
import Author from "./screens/author/author";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Dashboard />}></Route>
          <Route path="/author" element={<Author />}></Route>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
