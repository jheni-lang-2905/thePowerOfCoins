import React from "react";

import "../../../../styles/styles.css";

import { ErrorMessage, Formik, Form, Field } from "formik";
import * as yup from "yup";

import { ButtonHome } from "../Cover/styles";
import { Typography } from "../../../../components";

interface IProps {
  handleSubimit: (data?: any) => void;
}

export const Contact = ({ handleSubimit }: IProps) => {
  const validations = yup.object().shape({
    name: yup.string().required("Campo obrigatório"),
    email: yup.string().email().required("Campo obrigatório"),
  });

  return (
    <section className="contact section" id="contactme">
      <Typography
        color="#FFF"
        size="xl"
        textAlign="center"
        weight={600}
        margin="0.5em 0"
      >
        Email Service
      </Typography>
      <Typography
        color="#FFF"
        size="md"
        textAlign="center"
        weight={300}
        margin="0 0 3rem 0"
      >
        Cadastre-se seja atualizado sobre nosso LANÇAMENTO
      </Typography>

      <div className="contact_container container grid">
        <div>
          <div className="contact_information">
          <i className="uil uil-envelope contact_icon" />
            <div>
              <h3 className="contact_title">Email</h3>
              <span className="contact_subtitle">
                <a
                  href="mailto:contato@spacecoins.com.br?Subject=Olá"
                  target="_new"
                  rel="external"
                  className="contact_email"
                >
                  contato@spacecoins.com.br
                </a>
              </span>
            </div>
          </div>

          <div className="contact_information">
          <i className="uil uil-map-marker contact_icon" />

            <div>
              <h3 className="contact_title">Localização</h3>
              <span className="contact_subtitle">Brasil - São Paulo</span>
            </div>
          </div>
        </div>

        <Formik
          initialValues={{}}
          onSubmit={handleSubimit}
          validationSchema={validations}
          enableReinitialize
        >
          {({ isValid, dirty }) => (
            <Form className="contact_form grid">
              <div className="contact_inputs grid">
                <div className="contact_content">
                  <Field name="name" className="contact_input" />
                  <label className="contact_label">Nome</label>
                </div>
              </div>
              <ErrorMessage
                component="span"
                name="name"
                className="form-error"
              />
              <div className="contact_content">
                <Field
                  name="email"
                  type="email"
                  id="email"
                  className="contact_input"
                />
                <label className="contact_label">Email</label>
              </div>
              <ErrorMessage
                component="span"
                name="email"
                className="form-error"
              />
              <div className="contact_content">
                <Field
                  name="project"
                  id="project"
                  type="text"
                  className="contact_input"
                />
                <label className="contact_label">Menssage</label>
              </div>

              <div>
                <ButtonHome
                  type="submit"
                  className="button button--flex button_send"
                  disabled={!(dirty && isValid)}
                >
                  <Typography
                    color="#FFF"
                    size="bg"
                    weight={500}
                    textAlign="center"
                  >
                    Enviar
                  </Typography>
                </ButtonHome>
              </div>
            </Form>
          )}
        </Formik>
      </div>
    </section>
  );
};
