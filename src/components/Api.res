// Api.res
open Fetch

// Base URL de l'API
let baseUrl = "http://localhost:3000"

type clothing = {
  id: int,
  name: string,
  price: float,
  imageUrl: string,
}

type marque = {
  id: int,
  name: string,
  description: string,
  imageUrl: string,
}

type categorie = {
  id: int,
  name: string,
}

let fetchClothing = async () => {
  // Utilisation de Fetch.requestMethod.get pour spécifier la méthode GET
  let requestInit = Fetch.RequestInit.make(~method_=Fetch.Get, ())

  let response = await Fetch.fetchWithInit(baseUrl ++ "/clothing", requestInit)
    
      let data = await response->Fetch.Response.json
      data->Js.Json.decodeArray->Option.map(array => {
        array->Array.map(item => {
          let object = item->Js.Json.decodeObject -> Option.getExn
          {
            id: object->Js.Dict.get("idProduit")->Option.getExn->Js.Json.decodeNumber->Option.getExn->Float.toInt,
            name: object->Js.Dict.get("libelleProduit")->Option.getExn->Js.Json.decodeString->Option.getExn,
            price: object->Js.Dict.get("prixProduit")->Option.getExn->Js.Json.decodeNumber->Option.getExn,
            imageUrl:object->Js.Dict.get("image")->Option.getExn->Js.Json.decodeString->Option.getExn,
          }
        })
      }) -> Option.getExn
}




let fetchMarque = async () => {
  // Utilisation de Fetch.requestMethod.get pour spécifier la méthode GET
  let requestInit = Fetch.RequestInit.make(~method_=Fetch.Get, ())

  let response = await Fetch.fetchWithInit(baseUrl ++ "/marque", requestInit)
    
      let data = await response->Fetch.Response.json
      data->Js.Json.decodeArray->Option.map(array => {
        array->Array.map(item => {
          let object = item->Js.Json.decodeObject -> Option.getExn
          {
            id: object->Js.Dict.get("idMarque")->Option.getExn->Js.Json.decodeNumber->Option.getExn->Float.toInt,
            name: object->Js.Dict.get("libelle")->Option.getExn->Js.Json.decodeString->Option.getExn,
            description: object->Js.Dict.get("descriptionMarque")->Option.getExn->Js.Json.decodeString->Option.getExn,
            imageUrl:object->Js.Dict.get("image")->Option.getExn->Js.Json.decodeString->Option.getExn,
          }
        })
      }) -> Option.getExn
}

let fetchCategorie = async () => {
  // Utilisation de Fetch.requestMethod.get pour spécifier la méthode GET
  let requestInit = Fetch.RequestInit.make(~method_=Fetch.Get, ())

  let response = await Fetch.fetchWithInit(baseUrl ++ "/categorie", requestInit)
    
      let data = await response->Fetch.Response.json
      data->Js.Json.decodeArray->Option.map(array => {
        array->Array.map(item => {
          let object = item->Js.Json.decodeObject -> Option.getExn
          {
            id: object->Js.Dict.get("idCategorie")->Option.getExn->Js.Json.decodeNumber->Option.getExn->Float.toInt,
            name: object->Js.Dict.get("libelle")->Option.getExn->Js.Json.decodeString->Option.getExn,
          }
        })
      }) -> Option.getExn
}
