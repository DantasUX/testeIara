import React, { useState, useEffect } from "react";
import Microfone from "./microfone"

export default App = () => {
  const [showNotificationPanel, setShowNotificationPanel] = useState(false);
  const [notifications, setNotifications] = useState([]);

  const initNotifications = () => {
    const notification1 = (
      <div className="flex card fill--gray1 radius--12 p--20">
        <div className="no--flex avatar radius--8">
          <img src="../resources/images/icone01.png" alt="Notificação" />
        </div>
        <div className="flex column p-l--12">
          <p className="font--14 text--gray">
            Seu <strong>vocabulário personalizado</strong> tem uma nova versão
            disponível!
          </p>
          <p className="font--11 text--gray m-t--8">11 minutos atrás</p>
          <p className="font--13 text--gray m-t--16">
            A nova versão foi gerada a partir de <strong>120h</strong> de
            gravações da sua voz e garante uma maior precisão na transcrição.
          </p>
          <button
            type="button"
            className="button button--primary radius--8 m-t--24"
          >
            Utilizar a nova versão
          </button>
        </div>
      </div>
    );

    const notification2 = (
      <div className="flex card fill--gray1 radius--12 p--20 m-t--12">
        <div className="no--flex avatar radius--8">
          <img src="../resources/images/avatar--orange.svg" alt="Notificação" />
        </div>
        <div className="flex column p-l--12">
          <p className="font--14 text--gray">
            Suas últimas gravações estão com
            <strong>bastante ruído</strong> no microfone!
          </p>
          <p className="font--11 text--gray m-t--8">23 minutos atrás</p>
          <p className="font--13 text--gray m-t--16">
            O ruído <strong>atrapalha</strong> a precisão da transcrição,
            podendo causar erros no seu laudo. Tente ir para um lugar mais
            silencioso.
          </p>
        </div>
      </div>
    );

    setNotifications([notification1, notification2]);
  };

  useEffect(() => {
    initNotifications();
  }, []);


 
  const toggleShowNotification = () =>
    setShowNotificationPanel((currentShowState) => !currentShowState);

  const getOpacity = () => (showNotificationPanel ? 1 : 0);
  const cleanNotifications = () => setNotifications([]);
  const hasNotifications = () => notifications.length > 0;

  return (
    <>
    
   
      <div
        className="fill--gray2 shadow--1 radius--16 p--20"
        style={{
          width: "28rem",
          margin: "90px auto 0px",
          opacity: getOpacity(),
        }}
      >
        <div className="card--header">
          <div className="flex reverse--wrapper">
            <button
              type="button"
              className="button fill--gray2 ease-in-out radius--8"
              onClick={() => setShowNotificationPanel(false)}
            >
              <span className="icon close"></span>
            </button>
          </div>
          <div className="flex space--between p-t--16">
            <p className="font--16 text--white">Notificações</p>
            <button
              type="button"
              className="button fill--gray2 p-h--8 radius--4"
              onClick={cleanNotifications}
            >
              <p className="font--13 text--gray p-h--8">
                Marcar todas como lidas
              </p>
            </button>
          </div>
        </div>

        <div className="card--body m-t--20">
          {hasNotifications() ? notifications : <span>Sem Notificações</span>}
        </div>
      </div>


      <div
        className="fill--gray2 shadow--1 radius--16 p--20"
        style={{ width: "28rem", margin: "20px auto 90px" }}
      >
        <Microfone></Microfone>

        <div className="menu flex space--between m-t--16">
          <button className="button fill--gray2 menu--item">
            <span className="icon microphone"></span>
            <p className="font--11 text--gray m-t--4">Microfone</p>
          </button>
          <button className="button fill--gray2 menu--item">
            <span className="icon settings"></span>
            <p className="font--11 text--gray m-t--4">Configurações</p>
          </button>
          <button className="button fill--gray2 menu--item">
            <span className="icon activity"></span>
            <p className="font--11 text--gray m-t--4">Status</p>
          </button>
          <button className="button fill--gray2 menu--item">
            <span className="icon vocabulary"></span>
            <p className="font--11 text--gray m-t--4">Vocabulário</p>
          </button>
          <button
            className="button fill--gray2 menu--item"
            onClick={toggleShowNotification}
          >
            <span className="icon notification"></span>
            <p className="font--11 text--gray m-t--4">Notificações</p>
          </button>
        </div>
      </div>
    </>
  );
};
