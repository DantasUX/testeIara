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
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 11,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/icone01.png",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 12,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 14,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 15,
          columnNumber: 11
        }
      }, "Seu ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 16,
          columnNumber: 17
        }
      }, "vocabul??rio personalizado"), " tem uma nova vers??o dispon??vel!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 19,
          columnNumber: 11
        }
      }, "11 minutos atr??s"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 20,
          columnNumber: 11
        }
      }, "A nova vers??o foi gerada a partir de ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 21,
          columnNumber: 50
        }
      }, "120h"), " de grava????es da sua voz e garante uma maior precis??o na transcri????o."), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button button--primary radius--8 m-t--24",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 24,
          columnNumber: 11
        }
      }, "Utilizar a nova vers??o")));
      const notification2 = /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex card fill--gray1 radius--12 p--20 m-t--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 35,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "no--flex avatar radius--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 36,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/avatar--orange.svg",
        alt: "Notifica????o",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 37,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 39,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 40,
          columnNumber: 11
        }
      }, "Suas ??ltimas grava????es est??o com", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 42,
          columnNumber: 13
        }
      }, "bastante ru??do"), " no microfone!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 44,
          columnNumber: 11
        }
      }, "23 minutos atr??s"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 45,
          columnNumber: 11
        }
      }, "O ru??do ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 46,
          columnNumber: 21
        }
      }, "atrapalha"), " a precis??o da transcri????o, podendo causar erros no seu laudo. Tente ir para um lugar mais silencioso.")));
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
          lineNumber: 74,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--header",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 82,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex reverse--wrapper",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 83,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 ease-in-out radius--8",
        onClick: () => setShowNotificationPanel(false),
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 84,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon close",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 89,
          columnNumber: 15
        }
      }))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex space--between p-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 92,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--16 text--white",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 93,
          columnNumber: 13
        }
      }, "Notifica????es"), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 p-h--8 radius--4",
        onClick: cleanNotifications,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 94,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray p-h--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 99,
          columnNumber: 15
        }
      }, "Marcar todas como lidas")))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--body m-t--20",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 106,
          columnNumber: 9
        }
      }, hasNotifications() ? notifications : /*#__PURE__*/_reactDefault.default.createElement("span", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 107,
          columnNumber: 49
        }
      }, "Sem Notifica????es"))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "fill--gray2 shadow--1 radius--16 p--20",
        style: {
          width: "28rem",
          margin: "20px auto 90px"
        },
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 112,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement(_microfoneDefault.default, {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 116,
          columnNumber: 9
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "menu flex space--between m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 118,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 119,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon microphone",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 120,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 121,
          columnNumber: 13
        }
      }, "Microfone")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 123,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon settings",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 124,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 125,
          columnNumber: 13
        }
      }, "Configura????es")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 127,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon activity",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 128,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 129,
          columnNumber: 13
        }
      }, "Status")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 131,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon vocabulary",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 132,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 133,
          columnNumber: 13
        }
      }, "Vocabul??rio")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        onClick: toggleShowNotification,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 135,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon notification",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 139,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 140,
          columnNumber: 13
        }
      }, "Notifica????es")))))
    );
  }, "yrQ0Dq+p8IxbdoSS+YCXGp1S2uE=");
  helpers.postlude(module);
} finally {
  window.$RefreshReg$ = prevRefreshReg;
  window.$RefreshSig$ = prevRefreshSig;
}
