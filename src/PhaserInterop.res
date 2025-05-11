

let x = 5

type scene = {}
type game = {}
type sceneFn = scene => unit
type sceneUpd = (scene,float,float) => unit
type sceneConf = {}
type gameConf =     {
        "type" :int,
        "width": int,
        "height": int,
        "scene": scene,
        "physics": {
            "default": string,
            "arcade": {
                "gravity": { "y": int }
            }
        }
    } 


// Import nodejs' path.dirname
@module("./phaserWrapper")
external makeScene: (sceneFn,sceneFn,sceneUpd, sceneConf) => scene = "createScene"
@module("./phaserWrapper")
external makeGame: (gameConf) => game = "createGame"

