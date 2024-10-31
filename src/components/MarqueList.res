// MarqueList.res

open Header
@react.component
let make = () => {
  let (marqueList, setMarqueList) = React.useState(() => []);

  React.useEffect(() => {
    let makeRequest = async () => {
      let data = await Api.fetchMarque()
      setMarqueList((_) => data)
    }
    let _ = makeRequest()
    None
  }, []);

   <div>
   <Header />
    <h1>{React.string("Liste des marques")}</h1>
    <ul>
      {marqueList
      -> Array.map(marque =>
        <li key={marque.id->Int.toString}>
          {React.string(`${marque.name} - ${marque.description}`)}
          <img src={marque.imageUrl} alt={marque.name} />
        </li>
      )->React.array}
    </ul>
  </div>
};
