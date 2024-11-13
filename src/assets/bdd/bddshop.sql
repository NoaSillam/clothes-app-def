-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 13 nov. 2024 à 16:27
-- Version du serveur : 5.7.39
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bddshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCategorie` int(10) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCategorie`, `libelle`) VALUES
(1, 'robe'),
(2, 'jupe'),
(3, 'Manteaux'),
(4, 'Sacs'),
(5, 'Ceintures');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `idMarque` int(10) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `descriptionMarque` text,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idMarque`, `libelle`, `descriptionMarque`, `image`) VALUES
(1, 'Zara', 'Marque de prêt-à-porter tendance, à des prix accessible.', 'https://logodownload.org/wp-content/uploads/2014/05/zara-logo-0.png\''),
(2, 'Zimmermann', 'Marque de luxe Australienne', 'https://cdn.businessoffashion.com/uploads/media/bof_company_logo/0001/76/thumb_f42bde0686eb83dc0c1d60825d10b750756bb1a5_bof_company_logo_header.jpeg'),
(3, 'Oud Paris', 'Marque de luxe française', 'https://www.luxe-en-france.com/wp-content/uploads/2020/06/oud-logo.png'),
(4, 'MAJE', 'Maje est une marque de prêt-à-porter féminin de luxe accessible.', 'https://seeklogo.com/images/M/maje-logo-E6E9A5DCF7-seeklogo.com.png'),
(5, 'DIOR', 'La société a été fondée en 1946, à Paris par le couturier français Christian Dior.', 'https://static.vecteezy.com/system/resources/previews/023/599/609/original/dior-brand-clothes-symbol-logo-with-name-black-design-luxury-fashion-illustration-free-vector.jpg'),
(6, 'Chanel', 'Chanel est une entreprise française productrice de haute couture, ainsi que de prêt-à-porter, accessoires, parfums et divers produits de luxe.', 'https://wallpapers.com/images/hd/chanel-logo-background-1jvntzl8kgqm2c0d.jpg'),
(7, 'CELINE', 'Celine est une entreprise française de prêt-à-porter féminin et masculin ainsi que de maroquinerie fondée en 1945 par Céline Vipiana', 'https://c1.staticflickr.com/5/4163/34569687545_af07784300_o.jpg'),
(8, 'GUCCI', 'Gucci est une maison italienne spécialisée dans la mode et le luxe dont le siège est situé à Florence en Italie', 'https://pngimg.com/uploads/gucci/gucci_PNG12.png'),
(9, 'PRADA', 'Prada est une marque fondée en 1913 à Milan par Mario Prada et son frère Martino Prada sous le nom de Fratelli Prada.', 'https://logo.com/image-cdn/images/kts928pd/production/5be7f05ad50b4254e440898461e4ad1026a11723-900x592.png?w=512&q=72&fm=webp'),
(10, 'MISSONI', 'Missoni est une entreprise italienne spécialisée dans la mode, basée à Varèse. Cette maison est célèbre pour sa maille unique, ses couleurs et ses imprimés colorés, fleuris et fruités.', 'https://logonoid.com/images/missoni-logo.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(10) NOT NULL,
  `libelleProduit` varchar(255) DEFAULT NULL,
  `matiereProduit` varchar(255) DEFAULT NULL,
  `informationsProduit` text,
  `prixProduit` float DEFAULT NULL,
  `tailleProduit` varchar(255) DEFAULT NULL,
  `origineProduit` varchar(255) DEFAULT NULL,
  `referenceProduit` int(20) DEFAULT NULL,
  `idCategorie` int(10) DEFAULT NULL,
  `idMarque` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `libelleProduit`, `matiereProduit`, `informationsProduit`, `prixProduit`, `tailleProduit`, `origineProduit`, `referenceProduit`, `idCategorie`, `idMarque`, `image`) VALUES
(1, 'Robe Zara', ' Cuir', 'Prendre sa taille habituelle', 30, NULL, 'Made in France', 1, 1, 1, 'robezara.jpg'),
(2, 'Robe Maje', 'Satin', 'Prendre une taille en dessous', 70, '', 'Made in China', 2, 1, 4, 'robemaje3.jpg'),
(3, 'Robe Maje', 'Velours', 'Prendre une taille au dessus', 120, NULL, 'Made in Portugal', 3, 1, 4, 'robemaje4.webp'),
(4, 'Robe Zimmermann', 'Soie', 'Prendre une taille au dessus', 60, NULL, 'Made in Morroco', 4, 1, 2, 'robe4.webp'),
(5, 'Robe Oud Paris', '100% soie', 'Prendre une taille au dessus', 1585, NULL, 'Made in Morroco', 5, 1, 3, 'robeoud.png'),
(6, ' Jupe Mi-Longue Boutonnée DIOR', '100% Coton', 'Denim de coton léger à motif macro Toile de Jouy bleu', 1500, NULL, 'Made in Italy', 6, 2, 5, 'robeDior.png'),
(7, 'Manteau Vintage', 'Tweed', 'Prendre sa taille', 3550, NULL, 'Made in Italy', 7, 3, 6, 'manteau1.jpg'),
(8, 'Manteau Chanel multicolore', 'Tweed de coton & gros-grain', 'Prendre sa taille habituelle', 5000, NULL, 'Made in Italy', 8, 3, 6, 'manteau2.webp'),
(9, 'Jupe Zara', 'Coton', 'Couleur Kaki', 79.95, NULL, 'Made in Portugal', 9, 2, 1, 'jupe6.webp'),
(10, 'Jupe Zimmermann', '100% polyester 51% lin, 49% soie', 'Brodée de fleurs', 1190, NULL, 'Made in China', 10, 2, 2, 'jupe3.webp'),
(11, 'Jupe Zimmermann', '52% lin,48% soie,100% viscose', 'Taille bien', 920, NULL, 'Made in China', 11, 2, 2, 'robe5.webp'),
(12, 'Jupe Zimmermann', '100% lin doublure:100% coton', 'couleurLilac/Pink Paisley', 595, '', 'Made inSriLanka', 12, 2, 2, 'jupe5.webp'),
(13, 'Zimmermann Robe à motifs', '53% lin,47% soie,100% polyester', 'Prendre sa taille habituelle.', 1880, NULL, 'Made in China', 13, 1, 2, 'robe6.webp'),
(14, 'Missoni robe longue à rayures', 'Viscose 61%, Cupro 25%, Polyester14%\r\n', 'Multicolore,design tissé,rayures horizontales', 1390, NULL, 'Made in Italy', 14, 1, 10, 'robe7.webp'),
(15, 'Sac classique TIMELESS CHANEL', 'Agneau & métal doré', 'Couleur Noir', 8990, NULL, 'Made in Italy', 15, 4, 6, 'sac2.webp'),
(16, 'Sac Classique CHANEL ', 'Jersey de laine&métal doré', 'Couleur Rouge', 8350, '\r\n', 'Made in Italy', 16, 4, 6, 'sac1.webp'),
(17, 'Sac CELINE Triomphe Modèle SHOULDER ', 'VEAU SATINÉ', 'SHOULDER BAG en veau satiné muni d\'une bandoulière en cuir ajustable et d\'un fermoir Triomphe.', 2800, 'MINI : 11 X 8 X 4 CM (4 X 3 X 2 IN)', 'Made in France', 17, 4, 7, 'sac3.webp'),
(19, 'PRADA Sac Triangle Mini en satin à ornements', 'Couleur: OR', '-couleur selon designer:Platino', 2200, NULL, 'Made in Italy', 19, 4, 9, 'sac4.webp'),
(20, 'Ceinture CHANEL', 'Métal', 'Couleur Doré', 2530, NULL, 'Made in Italy', 20, 5, 6, 'ceinture1.webp'),
(21, 'Ceinture GG Marmont avec boucle brillante', 'Cuir Noir', 'Les produits Gucci sont fabriqués dans des matériaux sélectionnés avec la plus grande attention. ', 420, NULL, 'Made in Italy ', 21, 5, 8, 'ceinture2.webp'),
(22, 'RobeMaje', '57%polyester,100%viscose', 'Couleur verte', 375, NULL, 'MadeinItaly', 22, 1, 4, 'majerobe.jpg'),
(23, 'Sac Lady D-Lite medium DIOR', 'Entièrement brodé ', 'Il est ponctué de la signature CHRISTIAN DIOR PARIS, tandis que les charms D.I.O.R. en métal doré pâle rehaussent et illuminent sa silhouette. Doté d\'une large bandoulière brodée, réversible et amovible, ce sac Lady D-Lite medium pourra être porté à la main ou crossbody.', 4100, NULL, 'Made In Italy', 23, 4, 5, 'robedior2.png'),
(24, 'PRADA Sac Micro en cuir', 'cuir de veau', 'couleur selon designer:Platino', 740, NULL, 'Made in Italy', 24, 4, 9, 'pradasac.webp'),
(25, 'Missoni Robe', 'Viscose61%,Polyester14%,Polyester100%', 'Multicolore ', 1090, NULL, 'Made in Italy', 25, 1, 10, 'missoni.jpg'),
(26, 'Robe Oud Paris', '100% soie', 'Prendre une taille au dessus', 600, NULL, 'Made in Morroco', 26, 1, 3, 'robeoud1.jpg'),
(27, 'Ceinture GG Marmont avec boucle brillante', 'Toile Suprême Noire', 'Les produits Gucci sont fabriqués dans des matériaux sélectionnés avec la plus grande attention. ', 420, NULL, 'Made in Italy ', 21, 5, 8, 'ceinturegg.webp'),
(28, 'SacCELINE Ava', 'VEAU Blanc', 'SAC AVA TOILE TRIOMPHE ET VEAU BLANC', 2800, NULL, 'Made in France', 17, 4, 7, 'sacceline.webp'),
(29, 'Robe Zara imprimée', '100% Polyester', 'Robe longue à col montant et manches longues à boutons bimatière. Ouverture au dos avec nœud et bouton au col. Fermeture zip dissimulée dans la couture sur le côté.', 70, NULL, 'Made in France', 1, 1, 1, 'robezara1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(10) NOT NULL,
  `nomUtilisateur` varchar(255) DEFAULT NULL,
  `prenomUtilisateur` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `adressePostale` varchar(255) DEFAULT NULL,
  `codePostal` int(10) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `numTelephone` int(10) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nomUtilisateur`, `prenomUtilisateur`, `mail`, `adressePostale`, `codePostal`, `ville`, `numTelephone`, `login`, `statut`) VALUES
(1, 'Dadoun', 'Anaia', 'anaiadadoun3@gmail.com', 'rue de Reims', 94000, 'Creteil', 771666337, 'AD', 'admin'),
(2, 'admin', 'admin', 'admin@gmail.com', '94000', 94, 'creteil', 652851174, 'admin', 'admin'),
(3, 'demo', 'demo', 'demo', 'demo', 1, 'demo', 1, 'demo', 'demo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCategorie`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`idMarque`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`),
  ADD KEY `categorie` (`idCategorie`),
  ADD KEY `marque` (`idMarque`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `idProduit` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`idCategorie`),
  ADD CONSTRAINT `marque` FOREIGN KEY (`idMarque`) REFERENCES `marque` (`idMarque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
