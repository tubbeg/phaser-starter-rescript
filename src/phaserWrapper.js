import {Scene,Game} from "phaser"


//rescript does not have support for OOP
//shenanigans (inheritance) so writing a
// wrapper will be necessary
class XtScene extends Scene{
    constructor (p,c,u,conf){
        super(conf);
        this.p = p;
        this.c = c;
        this.u = u;
    }

    preload (){
        this.p(this);
    }

    create (){
        this.c(this);
    }

    update (t,dt){
        this.u(this,t,dt);
    }

}

export function createParticles (scene){
    const particles = scene.add.particles(0, 0, 'red',
        {
        speed: 100,
        scale: { start: 1, end: 0 },
        blendMode: 'ADD'
    });
    return particles;
}

export function createScene (p,c,u,conf){
    return new XtScene(p,c,u,conf);
}

export function createGame(conf){
    //conf.scene = new Example();
    return new Game(conf);
}