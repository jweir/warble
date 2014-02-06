// http://www.w3.org/TR/webaudio
window.AudioContext = window.AudioContext||window.webkitAudioContext;
// window.addEventListener('load', init, false);

(function(ctx){

  var ac = new AudioContext()

  function click(shape, start, stop){
    var oscillator = ac.createOscillator()
      , gainNode = ac.createGainNode();

    oscillator.type = shape;
    gainNode.connect(ac.destination);
    oscillator.connect(gainNode);

    oscillator.frequency.value = 50;
    gainNode.gain.value = 0.8;

    oscillator.start(ac.currentTime + start)
    oscillator.stop(ac.currentTime + stop)
  }

  ctx.click = click;
})(this);

