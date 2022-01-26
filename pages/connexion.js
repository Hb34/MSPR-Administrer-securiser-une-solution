import Layout from "../components/Layout";

export default function Connexion() {
  return (
    <Layout page="Connexion">
      <h2 className="text-2xl">
        Veuillez vous connecter pour accéder au réseau de la clinique
      </h2>
      <form className="flex flex-col border-4 border-violet-900 border-dotted h-fit w-fit place-content-center">
        <input id="name" type="text" placeholder="nom" required />
        <br />
        <input id="email" type="email" placeholder="email" required />
        <br />
        <button type="submit">Connexion</button>
      </form>
    </Layout>
  );
}
