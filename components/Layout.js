import Head from "next/head";
import Link from "next/link";
import Image from "next/image";

export default function Layout({ children, page }) {
  return (
    <div className="bg-purple-50 pt-5 text-center h-full">
      <Head>
        <title>{page}</title>
      </Head>
      <header className="container-lg">
        <h1 className="text-5xl mb-2">Clinique LE CHATELET</h1>
        <div className="inline-grid grid-cols-2 gap-x-10 p-4">
          <Link href="/" passHref>
            <button className="bg-purple-200 p-3 m-2 rounded-3xl hover:shadow-md border-2 border-purple-300">
              Accueil
            </button>
          </Link>

          <Link href="/connexion" passHref>
            <button className="bg-purple-200 p-3 m-2 rounded-3xl hover:shadow-md border-2 border-purple-300">
              Connexion
            </button>
          </Link>
        </div>
        <div>
          <Image
            src="/hospital.jpeg"
            alt="header-pic"
            width="500"
            height="200"
            quality={100}
            className="form-input rounded-2xl object-cover"
          />
        </div>
      </header>

      <br />
      <main className="pt-4 mx-20 bg-purple-50">{children} </main>

      <br />

      <footer className="text-xl mb-2 text-violet-400 w-full h-24 bg-violet-300">
        © 2022 Copyright: By Résilence34{" "}
      </footer>
    </div>
  );
}
