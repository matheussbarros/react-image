import kubernetesLogo from "./assets/kubernetes-icon.svg";
import "./App.css";

function App() {
  return (
    <>
      <div>
        <img src={kubernetesLogo} className="logo" alt="Vite logo" />

        {/*         <a href="https://react.dev" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a> */}
      </div>
      <h1>Kubernetes Weekly</h1>
      <div className="card"></div>
      <p className="read-the-docs">Imagem de aplicação react com vite</p>
    </>
  );
}

export default App;
