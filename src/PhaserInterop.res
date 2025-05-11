

let x = 5

type scene = {}
type sceneFn = scene => unit
type sceneUpd = (scene,float,float) => unit
type sceneConf = {}
// Import nodejs' path.dirname
@module("phaserWrapper")
external makeScene: (sceneFn,sceneFn,sceneUpd, sceneConf) => scene = "createScene"
