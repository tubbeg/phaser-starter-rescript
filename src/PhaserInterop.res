

type scene = {}
type game = {}
type gameobject = {}
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

@module("./phaserWrapper")
external makeScene: (sceneFn,sceneFn,sceneUpd, sceneConf) => scene = "createScene"
@module("./phaserWrapper")
external makeGame: (gameConf) => game = "createGame"
@module("./phaserWrapper")
external addLogo: (scene) => gameobject = "addLogo"
@module("./phaserWrapper")
external addParticles: (scene) => gameobject = "createParticles"

