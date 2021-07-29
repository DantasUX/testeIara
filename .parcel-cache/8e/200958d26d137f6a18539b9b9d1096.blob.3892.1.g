var helpers = require("../node_modules/@parcel/transformer-react-refresh-wrap/lib/helpers/helpers.js");
var prevRefreshReg = window.$RefreshReg$;
var prevRefreshSig = window.$RefreshSig$;
helpers.prelude(module);
try {
  var _parcelHelpers = require("@parcel/transformer-js/lib/esmodule-helpers.js");
  _parcelHelpers.defineInteropFlag(exports);
  var _react = require("react");
  var _reactDefault = _parcelHelpers.interopDefault(_react);
  var _microfone = require("./microfone");
  var _microfoneDefault = _parcelHelpers.interopDefault(_microfone);
  var _jsxFileName = "C:\\Users\\danta\\OneDrive\\Documentos\\programacao\\testeIara\\testeiara\\src\\app.js", _s = $RefreshSig$();
  exports.default = App = _s(() => {
    _s();
    const [showNotificationPanel, setShowNotificationPanel] = _react.useState(false);
    const [notifications, setNotifications] = _react.useState([]);
    const initNotifications = () => {
      const notification1 = /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex card fill--gray1 radius--12 p--20",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 10,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/icone01.png",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 11,
          columnNumber: 9
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("div", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 12,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/icone01.png",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 13,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 15,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 16,
          columnNumber: 11
        }
      }, "Seu ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 17,
          columnNumber: 17
        }
      }, "vocabulário personalizado"), " tem uma nova versão disponível!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 20,
          columnNumber: 11
        }
      }, "11 minutos atrás"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 21,
          columnNumber: 11
        }
      }, "A nova versão foi gerada a partir de ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 22,
          columnNumber: 50
        }
      }, "120h"), " de gravações da sua voz e garante uma maior precisão na transcrição."), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button button--primary radius--8 m-t--24",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 25,
          columnNumber: 11
        }
      }, "Utilizar a nova versão")));
      const notification2 = /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex card fill--gray1 radius--12 p--20 m-t--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 36,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "no--flex avatar radius--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 37,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/avatar--orange.svg",
        alt: "Notificação",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 38,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 40,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 41,
          columnNumber: 11
        }
      }, "Suas últimas gravações estão com", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 43,
          columnNumber: 13
        }
      }, "bastante ruído"), " no microfone!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 45,
          columnNumber: 11
        }
      }, "23 minutos atrás"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 46,
          columnNumber: 11
        }
      }, "O ruído ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 47,
          columnNumber: 21
        }
      }, "atrapalha"), " a precisão da transcrição, podendo causar erros no seu laudo. Tente ir para um lugar mais silencioso.")));
      setNotifications([notification1, notification2]);
    };
    _react.useEffect(() => {
      initNotifications();
    }, []);
    const toggleShowNotification = () => setShowNotificationPanel(currentShowState => !currentShowState);
    const getOpacity = () => showNotificationPanel ? 1 : 0;
    const cleanNotifications = () => setNotifications([]);
    const hasNotifications = () => notifications.length > 0;
    return (
      /*#__PURE__*/_reactDefault.default.createElement(_reactDefault.default.Fragment, null, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "fill--gray2 shadow--1 radius--16 p--20",
        style: {
          width: "28rem",
          margin: "90px auto 0px",
          opacity: getOpacity()
        },
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 75,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--header",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 83,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex reverse--wrapper",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 84,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 ease-in-out radius--8",
        onClick: () => setShowNotificationPanel(false),
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 85,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon close",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 90,
          columnNumber: 15
        }
      }))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex space--between p-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 93,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--16 text--white",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 94,
          columnNumber: 13
        }
      }, "Notificações"), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 p-h--8 radius--4",
        onClick: cleanNotifications,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 95,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray p-h--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 100,
          columnNumber: 15
        }
      }, "Marcar todas como lidas")))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--body m-t--20",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 107,
          columnNumber: 9
        }
      }, hasNotifications() ? notifications : /*#__PURE__*/_reactDefault.default.createElement("span", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 108,
          columnNumber: 49
        }
      }, "Sem Notificações"))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "fill--gray2 shadow--1 radius--16 p--20",
        style: {
          width: "28rem",
          margin: "20px auto 90px"
        },
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 113,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement(_microfoneDefault.default, {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 117,
          columnNumber: 9
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "menu flex space--between m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 119,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 120,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon microphone",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 121,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 122,
          columnNumber: 13
        }
      }, "Microfone")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 124,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon settings",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 125,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 126,
          columnNumber: 13
        }
      }, "Configurações")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 128,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon activity",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 129,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 130,
          columnNumber: 13
        }
      }, "Status")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 132,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon vocabulary",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 133,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 134,
          columnNumber: 13
        }
      }, "Vocabulário")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        onClick: toggleShowNotification,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 136,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon notification",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 140,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 141,
          columnNumber: 13
        }
      }, "Notificações")))))
    );
  }, "yrQ0Dq+p8IxbdoSS+YCXGp1S2uE=");
  helpers.postlude(module);
} finally {
  window.$RefreshReg$ = prevRefreshReg;
  window.$RefreshSig$ = prevRefreshSig;
}
