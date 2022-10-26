import React from "react";
import { toast } from "react-toastify";

import RotateLoader from "react-spinners/RotateLoader";
import { Footer, NavBar } from "../../components";
import { Contact, Cover, Promotion } from "./components";

import { Loader, Main } from "./styles";
import { primary } from "../../styles/theme";

const Home = (): JSX.Element => {
  const [loading, setLoading] = React.useState(false);

  const handleSubimit = (data: any) => {
    setLoading(true);

    // Do this instead
    setTimeout(function () {
      toast(`Obrigado ${data.name}! E-mail enviado com sucesso!`, {
        position: "top-right",
        autoClose: 5000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: true,
        draggable: true,
        progress: 0,
      });
    }, 5000);

    setTimeout(function () {
      setLoading(false);
    }, 5000);
  };

  return loading ? (
    <Loader>
      <RotateLoader size={25} color={primary.default} loading={loading} />
    </Loader>
  ) : (
    <>
      <NavBar />

      <Main>
        <Cover />

        <Promotion />

        <Contact handleSubimit={handleSubimit} />

        <Footer />
      </Main>
    </>
  );
};

export default Home;
