// Generated by ReScript, PLEASE EDIT WITH CARE

import * as PhaserInterop from "./PhaserInterop.res.js";

function createConfig(scene) {
  return {
          type: 0,
          width: 800,
          height: 600,
          scene: scene,
          physics: {
            default: "arcade",
            arcade: {
              gravity: {
                y: 200
              }
            }
          }
        };
}

var add = ((a, b) => a + b);

var myNum = add(5, 5);

function addNumbers(a, b) {
  return a + b | 0;
}

var add$1 = ((a, b) => a + b);

var setBaseUrl = ((s,url) => s.load.setBaseURL(url));

var loadImage = ((s,id,path) => s.load.image(id,path));

var addImage = ((s,x,y,id) => s.add.image(x, y, id));

var startFollow = ((go1,go2) => go1.startFollow(go2));

function preloadFn(s) {
  setBaseUrl(s, "https://labs.phaser.io");
  loadImage(s, "sky", "assets/skies/space3.png");
  loadImage(s, "logo", "assets/sprites/phaser3-logo.png");
  loadImage(s, "red", "assets/particles/red.png");
}

function createFn(s) {
  addImage(s, 400, 300, "sky");
  var p = PhaserInterop.addParticles(s);
  var l = PhaserInterop.addLogo(s);
  startFollow(p, l);
}

function updateFn(s, t, dt) {
  
}

var sceneConf = {};

var s = PhaserInterop.makeScene(preloadFn, createFn, updateFn, sceneConf);

var conf = createConfig(s);

console.log(conf);

var g = PhaserInterop.makeGame(conf);

export {
  createConfig ,
  myNum ,
  addNumbers ,
  add$1 as add,
  setBaseUrl ,
  loadImage ,
  addImage ,
  startFollow ,
  preloadFn ,
  createFn ,
  updateFn ,
  sceneConf ,
  s ,
  conf ,
  g ,
}
/* myNum Not a pure module */
