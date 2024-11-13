// // Importations nécessaires
// open React;

// @react.component
// let make = () => {
//   let (categorieList, setCategorieList) = React.useState(() => []);
//   let (isDropdownOpen, setIsDropdownOpen) = React.useState(() => false);

//   React.useEffect(() => {
//     // Créez une fonction asynchrone pour récupérer les données de l'API
//     let makeRequest = async () => {
//       let data = await Api.fetchCategorie(); // Appel à l'API pour récupérer les catégories
//       setCategorieList((_) => data);
//     };

//     // Appeler la fonction asynchrone sans retourner la promesse
//     let _ = makeRequest();

//     // Retourner `None` car React attend `unit` et non une promesse
//     None;
//   }, []);  // Le tableau de dépendances vide signifie que l'effet sera exécuté une seule fois

//   // Gestion de l'ouverture et fermeture du menu déroulant
//   let toggleDropdown = () => {
//     setIsDropdownOpen((prev) => !prev);
//   };

//   // Ferme le menu si on clique à l'extérieur
//   let closeDropdownOnClickOutside = React.useCallback((e) => {
//     if (!e.target.closest(".dropdown")) {
//       setIsDropdownOpen(false);
//     }
//   }, []);

//   // Utiliser un effet pour ajouter un événement de clic en dehors du menu
//   React.useEffect(() => {
//     window.addEventListener("click", closeDropdownOnClickOutside);
//     // Nettoyage lors du démontage du composant
//     None;
//   }, []);

//   <header style={ReactDOM.Style.make(~backgroundColor="#424547", ())} className="p-3">
//     <div className="container d-flex justify-content-between align-items-center">
//       <h1 className="h2 fw-bold text-white">
//         {"NOÏA Shop"->React.string}
//       </h1>
//       <nav className="navbar" style={ReactDOM.Style.make(~backgroundColor="#424547", ())}>
//         <li className="nav-item dropdown">
//           <a 
//             className="nav-link dropdown-toggle" 
//             href="#" 
//             role="button"
//             onClick={toggleDropdown}  /* Toggle the dropdown on click */
//             style={ReactDOM.Style.make(~cursor="pointer", ())}
//           >
//             {"Catégories"->React.string}
//           </a>
//           {isDropdownOpen && (
//             <ul className="dropdown-menu" style={ReactDOM.Style.make(~listStyleType="none", ~padding="0", ~margin="0", ())}>
//               {categorieList
//                 -> Array.map(categorie =>
//                     <li key={categorie.id->Int.toString()} style={ReactDOM.Style.make(~padding="8px", ())}>
//                       <a className="dropdown-item" href="#">
//                         {React.string(categorie.name)}
//                       </a>
//                     </li>
//                 )
//                 -> React.array
//               }
//             </ul>
//           )}
//         </li>
//         <li className="nav-item">
//           <a className="nav-link" href="./marque"> 
//             {"Marque"->React.string}
//           </a>
//         </li>
//         <li className="nav-item">
//           <a className="nav-link" href="#contact"> 
//             {"Contact"->React.string}
//           </a>
//         </li>
//       </nav>
//     </div>
//   </header>
// };





@react.component
let make = () => {
  <header style={ReactDOM.Style.make(~backgroundColor="#424547", ())} className="p-3">
    <div className="container d-flex justify-content-between align-items-center">
      <h1 className="h2 fw-bold text-white">
        {"NOÏA Shop"->React.string}
      </h1>
      <nav className="navbar" style={ReactDOM.Style.make(~backgroundColor="#424547", ())}>
        <div className="d-flex">
          <a href="./categorie" className="text-white me-3">
            {"Catégories"->React.string}
          </a>
          <a href="./marque" className="text-white me-3">
            {"Marque"->React.string}
          </a>
          <a href="#contact" className="text-white">
            {"Contact"->React.string}
          </a>
        </div>
      </nav>
    </div>
  </header>
}

