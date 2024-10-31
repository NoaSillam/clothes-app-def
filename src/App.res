
@react.component
let make = () => {
let url = RescriptReactRouter.useUrl()

switch url.path{

  | list{"clothing"} => <ClothingList />
  | list{"marque"} => <MarqueList />
  | list{"categorie"} => <CategorieList />
  | _ => <Home />
}}