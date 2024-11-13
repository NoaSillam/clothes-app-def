@react.component
open Header
open Footer

// Exemple de données pour les catégories
// let simulatedCategories = [
//   { "name": "Hommes", "description": "Découvrez notre collection pour hommes", "image": "https://via.placeholder.com/100" },
//   { "name": "Femmes", "description": "Mode pour femmes tendance", "image": "https://via.placeholder.com/100" },
//   { "name": "Enfants", "description": "Habits pour les petits", "image": "https://via.placeholder.com/100" }
// ]

// Exemple de données pour les produits
let simulatedProducts = [
  { "name": "Veste en Jean", "price": "59.99", "description": "Veste en jean stylée pour toutes les saisons.", "image": "https://via.placeholder.com/150" },
  { "name": "Robe d'été", "price": "39.99", "description": "Robe légère et confortable pour les jours ensoleillés.", "image": "https://via.placeholder.com/150" },
  { "name": "T-shirt classique", "price": "19.99", "description": "T-shirt basique en coton, disponible en plusieurs couleurs.", "image": "https://via.placeholder.com/150" }
]

// @react.component
// let make = (~name: string) => {
//   <div className="bg-gray-50">
//     <Header />
//     <main className="container mx-auto p-4" style={{
//       backgroundImage: "url('/src/assets/Image/fondmarbre.webp')",
//       margin: "0 0 0 0", // Corrected margin value
//     }}>

@react.component
let make = () => {
  // Utilisez des guillemets doubles ou simples de manière cohérente

      // Déclaration de l'état clothingList avec sa fonction de mise à jour
      let (clothingList, setClothingList) = React.useState(() => []);

      // Utilisation de React.useEffect pour récupérer les données de vêtements
      React.useEffect(() => {
        let makeRequest = async () => {
          let data = await Api.fetchClothing();
          setClothingList((_) => data);
        };
        let _ = makeRequest();
        None;
      }, []);

    <div className="bg-gray-50">
    <Header />
    <main className="container mx-auto p-4" style={{ backgroundImage: "url('/src/assets/Image/fondmarbre.webp')", margin: "0 0 0 0", }}>

      <section className="my-8">
        // En-tête de la section avec le titre principal
        <h1 className="text-center my-4 display-4 fw-bold">
          {React.string("Vêtements à la une")}
        </h1>
        <div
          className="row justify-content-center"
          style={{width: "95%", margin: "0 auto"}}>
          {
            clothingList
            -> Array.map(clothing =>
              <div
                className="col-3 mb-4 d-flex justify-content-center"
                key={clothing.id->Int.toString}>
                <div className="card text-center" style={{width: "100%"}}>
                  <div className="d-flex justify-content-center">
                    <img
                      src={"/src/assets/Images/" ++ clothing.imageUrl}
                      alt={clothing.name}
                      className="card-img-top"
                      style={{
                        height: "200px",
                        width: "45%",
                        objectFit: "cover",
                      }}
                    />
                  </div>
                  <div className="card-body">
                    <p className="card-title">
                      {React.string(clothing.name)}
                    </p>
                    <a href="#" className="btn btn-secondary">
                      {React.string(clothing.price->Float.toString ++ " €")}
                    </a>
                  </div>
                </div>
              </div>
            )->React.array
          }
        </div>
      </section>



    </main>
    <Footer />
  </div>
}