
/*
Some thoughts on Rescript.


I guess that the major advantage of Rescript (RS) is that the language
is explicitly designed to target Javascript (JS) and nothing else.

You either run RS with the browser client or with nodeJS. There's
nothing inbetween.

A problem with F# Fable is that F# is designed for the .NET CLR. So you
have to cover all kinds of language constructs. Sometimes that doesn't
always work. The translation between F# and JS is not always 1-to-1.

These kinds of problem won't appear in RS.

Typescript (TS) is great, but it does have many problems that Rescript
fixes. But I'm also not saying that TS is worse than RS. Sometimes you
need a drill. Sometimes you need a hammer.

Use the best tool for the job!

I will note that the RS compiler is really really fast.

*/

let createConfig = (scene) =>
    {
        "type" :5,
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

let addNumbers = (a,b) => a + b

let preloadFn = (s) => ()
let createFn = (s) => ()
let updateFn = (s,t,dt) => () 
let sceneConf : PhaserInterop.sceneConf = {}

let s = PhaserInterop.makeScene (preloadFn, createFn, updateFn, sceneConf)
let conf = createConfig (s)


/*

let create-co

{
        type: Phaser.AUTO,
        width: 800,
        height: 600,
        scene: Example,
        physics: {
            default: 'arcade',
            arcade: {
                gravity: { y: 200 }
            }
        }
    } */