import Head from "next/head";
import Layout from "../components/Layout";

export default function Home() {
  return (
    <Layout page="Accueil - Connexion">
      <p>
        La clinique LE CHATELET est un Centre de Rééducation et de Réadaptation
        Fonctionnelles, Clinique de Convalescence Spécialisée, agréée par le
        ministère de la Santé et des Affaires Sociales. Elle est conventionnée
        avec les différents organismes sociaux (toutes les caisses d’Assurances
        Maladie et les mutuelles). Sa vocation : la rééducation précoce en
        traumatologie, chirurgie orthopédique et réparatrice, la réadaptation en
        rhumatologie, la convalescence spécialisée post-opératoire.
      </p>
    </Layout>
  );
}
