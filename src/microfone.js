import React, { useState, useEffect } from "react";

export default Microfone = () => {

  const [isRecording, setIsRecording] = useState(false);

  const [volume, setVolume] = useState(0);
  const [, setVolumeTimer] = useState(null);

  const [recordingChunks, setRecordingChunks] = useState([]);
  const [, setRecorder] = useState(null);

  useEffect(() => {
    isRecording ? startMicrophone() : closeMicrophone();
  }, [isRecording]);

  const startMicrophone = async () => {
    const audioStream = await navigator.mediaDevices.getUserMedia({
      audio: true,
      video: false,
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
      const mean =
        currentAudioValues.reduce((prev, curr) => prev + curr) /
        currentAudioValues.length;

      setVolume(Math.ceil(mean));
    }, 100);

    const recorder = new MediaRecorder(audioStream);
    recorder.start(100);
    recorder.ondataavailable = (e) =>
      setRecordingChunks((chunks) => [...chunks, e.data]);

    setRecorder(recorder);
    setVolumeTimer(timer);
  };

  const closeMicrophone = () => {
    setVolumeTimer((currTimer) => {
      clearInterval(currTimer);
      return null;
    });

    setVolume(0);

    setRecorder((currRecorder) => {
      if (currRecorder) {
        currRecorder.stop();
      }
      return null;
    });

    if (recordingChunks.length > 0) {
      console.log({ recordingChunks });
      const recording = new Blob(recordingChunks, {
        type: "audio/ogg; codecs=opus",
      });
      const url = URL.createObjectURL(recording);
      downloadBlob(url);
    }

    setRecordingChunks([]);
  };

  const downloadBlob = (blobUrl) => {
    const a = document.createElement("a");
    a.style = "display: none";
    document.body.appendChild(a);
    a.href = blobUrl;
    a.download = "audio.ogg";
    a.click();
    window.URL.revokeObjectURL(blobUrl);

  };

  const toggleIsRecording = () =>
    setIsRecording((currentIsRecording) => !currentIsRecording);


  return (
    <>
    <div className="flex">
          <div
            style={{
              background: `linear-gradient(90deg, #FF4757 ${volume}%, #212121 ${volume}%)`,
            }}
            id="siri-container"
            className="waves fill--gray3 radius--16"
          ></div>
          <button
            type="no--flex button"
            className="button button--primary shadow--red radius--16 m-l--20"
            onClick={toggleIsRecording}
          >
            <span className="icon microphone--large"></span>
          </button>
        </div>
   
    </>
  );
};
