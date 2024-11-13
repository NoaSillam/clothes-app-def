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
   <h1 className="text-center my-4 display-4 fw-bold">{React.string("Liste des marques")}</h1>
  <div className="row justify-content-center" style={{width: "95%", margin: "0 auto"}}>
      {marqueList
      -> Array.map(marque =>
      <div className="col-3 mb-4 d-flex justify-content-center" key={marque.id->Int.toString}>
<div className="card text-center" style={{width: "100%"}}>
            <div className="d-flex justify-content-center">
              <img
                src={marque.imageUrl}
                alt={marque.name}
                className="card-img-top"
                style={{ height: "200px", width: "95%", objectFit: "cover" }}
              />
            </div>
            <div className="card-body">
              <p className="card-title">
                {React.string(`${marque.name}`)}
              </p>
               <p className="card-title">
                {React.string(`${marque.description}`)}
              </p>
              // <a href="#" className="btn btn-secondary">{React.string(`${clothing.price->Float.toString} €`)}</a>
            </div>
          </div>
        </div>


        // <li key={marque.id->Int.toString}>
        //   {React.string(`${marque.name} - ${marque.description}`)}
        //   <img src={marque.imageUrl} alt={marque.name} />
        // </li>
      )->React.array}
  </div>
    <Footer />
  </div>
};
