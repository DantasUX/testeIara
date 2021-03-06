var helpers = require("../node_modules/@parcel/transformer-react-refresh-wrap/lib/helpers/helpers.js");
var prevRefreshReg = window.$RefreshReg$;
var prevRefreshSig = window.$RefreshSig$;
helpers.prelude(module);
try {
  var _parcelHelpers = require("@parcel/transformer-js/lib/esmodule-helpers.js");
  _parcelHelpers.defineInteropFlag(exports);
  var _react = require("react");
  var _reactDefault = _parcelHelpers.interopDefault(_react);
  require("./microfone");
  var _jsxFileName = "C:\\Users\\danta\\OneDrive\\Documentos\\programacao\\testeIara\\testeiara\\src\\app.js", _s = $RefreshSig$();
  exports.default = App = _s(() => {
    _s();
    const [showNotificationPanel, setShowNotificationPanel] = _react.useState(false);
    const [notifications, setNotifications] = _react.useState([]);
    const [isRecording, setIsRecording] = _react.useState(false);
    const [volume, setVolume] = _react.useState(0);
    const [, setVolumeTimer] = _react.useState(null);
    const [recordingChunks, setRecordingChunks] = _react.useState([]);
    const [, setRecorder] = _react.useState(null);
    const initNotifications = () => {
      const notification1 = /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex card fill--gray1 radius--12 p--20",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 18,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "no--flex avatar radius--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 19,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/avatar--red.svg",
        alt: "Notificação",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 20,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 22,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 23,
          columnNumber: 11
        }
      }, "Seu ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 24,
          columnNumber: 17
        }
      }, "vocabulário personalizado"), " tem uma nova versão disponível!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 27,
          columnNumber: 11
        }
      }, "11 minutos atrás"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 28,
          columnNumber: 11
        }
      }, "A nova versão foi gerada a partir de ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 29,
          columnNumber: 50
        }
      }, "120h"), " de gravações da sua voz e garante uma maior precisão na transcrição."), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button button--primary radius--8 m-t--24",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 32,
          columnNumber: 11
        }
      }, "Utilizar a nova versão")));
      const notification2 = /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex card fill--gray1 radius--12 p--20 m-t--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 43,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "no--flex avatar radius--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 44,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("img", {
        src: "../resources/images/avatar--orange.svg",
        alt: "Notificação",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 45,
          columnNumber: 11
        }
      })), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex column p-l--12",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 47,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--14 text--gray",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 48,
          columnNumber: 11
        }
      }, "Suas últimas gravações estão com", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 50,
          columnNumber: 13
        }
      }, "bastante ruído"), " no microfone!"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 52,
          columnNumber: 11
        }
      }, "23 minutos atrás"), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 53,
          columnNumber: 11
        }
      }, "O ruído ", /*#__PURE__*/_reactDefault.default.createElement("strong", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 54,
          columnNumber: 21
        }
      }, "atrapalha"), " a precisão da transcrição, podendo causar erros no seu laudo. Tente ir para um lugar mais silencioso.")));
      setNotifications([notification1, notification2]);
    };
    _react.useEffect(() => {
      initNotifications();
    }, []);
    _react.useEffect(() => {
      isRecording ? startMicrophone() : closeMicrophone();
    }, [isRecording]);
    const startMicrophone = async () => {
      const audioStream = await navigator.mediaDevices.getUserMedia({
        audio: true,
        video: false
      });
      const audioContext = new AudioContext();
      const analyser = audioContext.createAnalyser();
      analyser.fftSize = 1024;
      analyser.smoothingTimeConstant = 0.8;
      const microphone = audioContext.createMediaStreamSource(audioStream);
      microphone.connect(analyser);
      const bufferLength = analyser.frequencyBinCount;
      const sampleArray = new Uint8Array(bufferLength);
      const timer = setInterval(() => {
        analyser.getByteFrequencyData(sampleArray);
        const currentAudioValues = Array.from(sampleArray);
        const mean = currentAudioValues.reduce((prev, curr) => prev + curr) / currentAudioValues.length;
        setVolume(Math.ceil(mean));
      }, 100);
      const recorder = new MediaRecorder(audioStream);
      recorder.start(100);
      recorder.ondataavailable = e => setRecordingChunks(chunks => [...chunks, e.data]);
      setRecorder(recorder);
      setVolumeTimer(timer);
    };
    const closeMicrophone = () => {
      setVolumeTimer(currTimer => {
        clearInterval(currTimer);
        return null;
      });
      setVolume(0);
      setRecorder(currRecorder => {
        if (currRecorder) {
          currRecorder.stop();
        }
        return null;
      });
      if (recordingChunks.length > 0) {
        console.log({
          recordingChunks
        });
        const recording = new Blob(recordingChunks, {
          type: "audio/ogg; codecs=opus"
        });
        const url = URL.createObjectURL(recording);
        downloadBlob(url);
      }
      setRecordingChunks([]);
    };
    const downloadBlob = blobUrl => {
      const a = document.createElement("a");
      a.style = "display: none";
      document.body.appendChild(a);
      a.href = blobUrl;
      a.download = "audio.ogg";
      a.click();
      window.URL.revokeObjectURL(blobUrl);
    };
    const toggleIsRecording = () => setIsRecording(currentIsRecording => !currentIsRecording);
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
          lineNumber: 159,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--header",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 167,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex reverse--wrapper",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 168,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 ease-in-out radius--8",
        onClick: () => setShowNotificationPanel(false),
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 169,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon close",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 174,
          columnNumber: 15
        }
      }))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex space--between p-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 177,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--16 text--white",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 178,
          columnNumber: 13
        }
      }, "Notificações"), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "button",
        className: "button fill--gray2 p-h--8 radius--4",
        onClick: cleanNotifications,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 179,
          columnNumber: 13
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--13 text--gray p-h--8",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 184,
          columnNumber: 15
        }
      }, "Marcar todas como lidas")))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "card--body m-t--20",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 191,
          columnNumber: 9
        }
      }, hasNotifications() ? notifications : /*#__PURE__*/_reactDefault.default.createElement("span", {
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 192,
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
          lineNumber: 197,
          columnNumber: 7
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "flex",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 201,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("div", {
        style: {
          background: `linear-gradient(90deg, #FF4757 ${volume}%, #212121 ${volume}%)`
        },
        id: "siri-container",
        className: "waves fill--gray3 radius--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 202,
          columnNumber: 11
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("button", {
        type: "no--flex button",
        className: "button button--primary shadow--red radius--16 m-l--20",
        onClick: toggleIsRecording,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 209,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon microphone--large",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 214,
          columnNumber: 13
        }
      }))), /*#__PURE__*/_reactDefault.default.createElement("div", {
        className: "menu flex space--between m-t--16",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 217,
          columnNumber: 9
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 218,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon microphone",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 219,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 220,
          columnNumber: 13
        }
      }, "Microfone")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 222,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon settings",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 223,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 224,
          columnNumber: 13
        }
      }, "Configurações")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 226,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon activity",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 227,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 228,
          columnNumber: 13
        }
      }, "Status")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 230,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon vocabulary",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 231,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 232,
          columnNumber: 13
        }
      }, "Vocabulário")), /*#__PURE__*/_reactDefault.default.createElement("button", {
        className: "button fill--gray2 menu--item",
        onClick: toggleShowNotification,
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 234,
          columnNumber: 11
        }
      }, /*#__PURE__*/_reactDefault.default.createElement("span", {
        className: "icon notification",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 238,
          columnNumber: 13
        }
      }), /*#__PURE__*/_reactDefault.default.createElement("p", {
        className: "font--11 text--gray m-t--4",
        __self: undefined,
        __source: {
          fileName: _jsxFileName,
          lineNumber: 239,
          columnNumber: 13
        }
      }, "Notificações")))))
    );
  }, "ZAyzW2v+g/5kc7h4GoPyEi1JJWk=");
  helpers.postlude(module);
} finally {
  window.$RefreshReg$ = prevRefreshReg;
  window.$RefreshSig$ = prevRefreshSig;
}
