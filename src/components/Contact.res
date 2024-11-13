// @react.component
// let make = () => {
//   // Définir les champs du formulaire comme des variables locales
//   let name = ref("")
//   let email = ref("")
//   let message = ref("")

//   // Variable pour suivre la soumission
//   let isSubmitted = ref(false)

//   // Fonction de soumission du formulaire
//   let handleSubmit = (event: ReactEvent.Form.t) => {
//     ReactEvent.Form.preventDefault(event)

//     // Marquer que le formulaire a été soumis
//     isSubmitted := true

//     // Réinitialiser les champs
//     name := ""
//     email := ""
//     message := ""

//     // // Forcer une re-render pour afficher le message de succès
//     // Js.Global.setTimeout(() => {
//     //   isSubmitted := false
//     // }, 3000) // Réinitialiser après 3 secondes

//     // Retourner `unit` pour respecter le type attendu
//     ()
//   }

//   <div className="container">
//     <h2>{React.string("Contactez-nous")}</h2>
//     <form onSubmit={handleSubmit}>
//       <div className="form-group">
//         <label htmlFor="name">{React.string("Nom :")}</label>
//         <input
//           type_="text"
//           id="name"
//           value={name->React.string}
//           onChange={event => name := ReactEvent.Form.target(event)->ReactEvent.Form.value}
//           className="form-control"
//         />
//       </div>

//       <div className="form-group">
//         <label htmlFor="email">{React.string("Email :")}</label>
//         <input
//           type_="email"
//           id="email"
//           value={email->React.string}
//           onChange={event => email := ReactEvent.Form.target(event)->ReactEvent.Form.value}
//           required
//           className="form-control"
//         />
//       </div>

//       <div className="form-group">
//         <label htmlFor="message">{React.string("Message :")}</label>
//         <textarea
//           id="message"
//           rows=4
//           value={message->React.string}
//           onChange={event => message := ReactEvent.Form.target(event)->ReactEvent.Form.value}
//           required
//           className="form-control"
//         />
//       </div>

//       <button type_="submit">{React.string("Envoyer")}</button>

//       {
//         if (isSubmitted.contents) {
//           <p className="success-message">{React.string("Votre message a été envoyé avec succès !")}</p>
//         } else {
//           React.null
//         }
//       }
//     </form>
//   </div>
// }
