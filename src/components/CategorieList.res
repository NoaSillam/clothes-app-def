// MarqueList.res
open Header

@react.component
let make = () => {
  let (categorieList, setCategorieList) = React.useState(() => []);

  React.useEffect(() => {
    let makeRequest = async () => {
      let data = await Api.fetchCategorie()
      setCategorieList((_) => data)
    }
    let _ = makeRequest()
    None
  }, []);

  <div>
   <Header />
    <h1>{React.string("Liste des categories")}</h1>
    <ul>
      {categorieList
      -> Array.map(categorie =>
        <li key={categorie.id->Int.toString}>
          {React.string(`${categorie.name} `)}
        </li>
      )->React.array}
    </ul>
  </div>
};
