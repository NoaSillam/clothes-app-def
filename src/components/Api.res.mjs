// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Fetch from "bs-fetch/src/Fetch.res.mjs";
import * as Js_dict from "rescript/lib/es6/js_dict.js";
import * as Js_json from "rescript/lib/es6/js_json.js";
import * as Core__Option from "@rescript/core/src/Core__Option.res.mjs";

var baseUrl = "http://localhost:3000";

async function fetchClothing() {
  var requestInit = Fetch.RequestInit.make("Get", undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)();
  var response = await fetch(baseUrl + "/clothing", requestInit);
  var data = await Fetch.$$Response.json(response);
  return Core__Option.getExn(Core__Option.map(Js_json.decodeArray(data), (function (array) {
                    return array.map(function (item) {
                                var object = Core__Option.getExn(Js_json.decodeObject(item), undefined);
                                return {
                                        id: Core__Option.getExn(Js_json.decodeNumber(Core__Option.getExn(Js_dict.get(object, "idProduit"), undefined)), undefined) | 0,
                                        name: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "libelleProduit"), undefined)), undefined),
                                        price: Core__Option.getExn(Js_json.decodeNumber(Core__Option.getExn(Js_dict.get(object, "prixProduit"), undefined)), undefined),
                                        imageUrl: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "image"), undefined)), undefined)
                                      };
                              });
                  })), undefined);
}

async function fetchMarque() {
  var requestInit = Fetch.RequestInit.make("Get", undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)();
  var response = await fetch(baseUrl + "/marque", requestInit);
  var data = await Fetch.$$Response.json(response);
  return Core__Option.getExn(Core__Option.map(Js_json.decodeArray(data), (function (array) {
                    return array.map(function (item) {
                                var object = Core__Option.getExn(Js_json.decodeObject(item), undefined);
                                return {
                                        id: Core__Option.getExn(Js_json.decodeNumber(Core__Option.getExn(Js_dict.get(object, "idMarque"), undefined)), undefined) | 0,
                                        name: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "libelle"), undefined)), undefined),
                                        description: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "descriptionMarque"), undefined)), undefined),
                                        imageUrl: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "image"), undefined)), undefined)
                                      };
                              });
                  })), undefined);
}

async function fetchCategorie() {
  var requestInit = Fetch.RequestInit.make("Get", undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined)();
  var response = await fetch(baseUrl + "/categorie", requestInit);
  var data = await Fetch.$$Response.json(response);
  return Core__Option.getExn(Core__Option.map(Js_json.decodeArray(data), (function (array) {
                    return array.map(function (item) {
                                var object = Core__Option.getExn(Js_json.decodeObject(item), undefined);
                                return {
                                        id: Core__Option.getExn(Js_json.decodeNumber(Core__Option.getExn(Js_dict.get(object, "idCategorie"), undefined)), undefined) | 0,
                                        name: Core__Option.getExn(Js_json.decodeString(Core__Option.getExn(Js_dict.get(object, "libelle"), undefined)), undefined)
                                      };
                              });
                  })), undefined);
}

export {
  baseUrl ,
  fetchClothing ,
  fetchMarque ,
  fetchCategorie ,
}
/* No side effect */
