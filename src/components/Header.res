@react.component
let make = () => {
  <header className="bg-gray-900 text-white p-4">
    <div className="container mx-auto flex justify-between items-center">
      <h1 className="text-2xl font-bold">{"Boutique de Vêtements"->React.string}</h1>
      <nav className="space-x-4">
        <a href="./categorie" className="hover:text-gray-300">{"Catégories"->React.string}</a>
        <a href="./marque" className="hover:text-gray-300">{"Marque"->React.string}</a> {/* Mise à jour ici */}
        <a href="#contact" className="hover:text-gray-300">{"Contact"->React.string}</a>
      </nav>
    </div>
  </header>
}