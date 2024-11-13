// ClothingList.res
open Header

@react.component
let make = () => {
  let (clothingList, setClothingList) = React.useState(() => []);

  React.useEffect(() => {
    let makeRequest = async () => {
      let data = await Api.fetchClothing();
      setClothingList((_) => data);
    };
    let _ = makeRequest();
    None;
  }, []);

  <div>
    <Header />
    <h1 className="text-center my-4 display-4 fw-bold">{React.string("Liste des vêtements")}</h1>
    <div className="row justify-content-center" style={{width: "95%", margin: "0 auto"}}>
      {clothingList
      -> Array.map(clothing =>
        <div className="col-3 mb-4 d-flex justify-content-center" key={clothing.id->Int.toString}>
          <div className="card text-center" style={{width: "100%"}}>
            <div className="d-flex justify-content-center">
              <img
                src={"/src/assets/Images/" ++ clothing.imageUrl}
                alt={clothing.name}
                className="card-img-top"
                style={{ height: "200px", width: "45%", objectFit: "cover" }}
              />
            </div>
            <div className="card-body">
              <p className="card-title">
                {React.string(`${clothing.name}`)}
              </p>
              <a href="#" className="btn btn-secondary">{React.string(`${clothing.price->Float.toString} €`)}</a>
            </div>
          </div>
        </div>
      )->React.array}
    </div>
    <Footer />
  </div>
};
