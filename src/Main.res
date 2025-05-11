/*
A starter project for Phaser and Rescript.*/

let createConfig : (PhaserInterop.scene) => PhaserInterop.gameConf = (scene) =>
    {
        "type" :0,
        "width": 800,
        "height": 600,
        "scene": scene,
        "physics": {
            "default": "arcade",
            "arcade": {
                "gravity": { "y": 200 }
            }
        }
    } 

let add = %raw("(a, b) => a + b")

//this is really interesting
//i'm essentially telling the compiler:
//trust me I know what I'm doing. This is
//an integer. But I could easily change this
//to a string. A little bit different from
//Emit in F# Fable
let myNum : int = add (5,5) 

let addNumbers = (a,b) => a + b

let add = %raw("(a, b) => a + b")

//this is honestly slightly easier than Fable
let setBaseUrl : (PhaserInterop.scene, string) => unit
    = %raw("(s,url) => s.load.setBaseURL(url)")
let loadImage : (PhaserInterop.scene, string, string) => unit
    = %raw("(s,id,path) => s.load.image(id,path)")
let addImage
    = %raw("(s,x,y,id) => s.add.image(x, y, id)")
let startFollow
    = %raw("(go1,go2) => go1.startFollow(go2)")


//this does look very similar to js
let preloadFn = (s : PhaserInterop.scene) => {
    setBaseUrl (s,"https://labs.phaser.io")
    loadImage (s, "sky", "assets/skies/space3.png")
    loadImage (s, "logo", "assets/sprites/phaser3-logo.png")
    loadImage (s, "red", "assets/particles/red.png")
}

let createFn = (s) => {
    addImage (s,400,300,"sky")->ignore
    let p = s->PhaserInterop.addParticles
    let l = s->PhaserInterop.addLogo
    startFollow (p,l)->ignore
}
let updateFn = (s,t,dt) => () 
let sceneConf : PhaserInterop.sceneConf = {}

let s = PhaserInterop.makeScene (preloadFn, createFn, updateFn, sceneConf)
let conf = createConfig (s)

Console.log(conf)

let g = PhaserInterop.makeGame (conf)



/*
Some thoughts on Rescript.


I guess that the major advantage of Rescript (RS) over other alternatives
is that the language is explicitly designed to target Javascript (JS) and
nothing else.

You either run RS with the browser client or with nodeJS. There's nothing
inbetween.

A problem with F# Fable is that F# is designed for the .NET CLR. So you
have to cover all kinds of language constructs. Sometimes that doesn't
always work. The translation between F# and JS is not always 1-to-1.

These kinds of problem won't appear in RS. For instance, the syntax is
intentionally designed to be similar to JS.

Typescript (TS) is great, but it does have many problems that Rescript
fixes. But I'm also not saying that TS is worse than RS. Sometimes you
need a drill. Sometimes you need a hammer.

Use the best tool for the job!

I will note that the RS compiler is really really fast.

*/