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

export function addLogo (scene){
    const logo = scene.physics.add.image(400, 100, 'logo');
    logo.setVelocity(100, 200);
    logo.setBounce(1, 1);
    logo.setCollideWorldBounds(true);
    return logo;
}

export function createScene (p,c,u,conf){
    return new XtScene(p,c,u,conf);
}

export function createGame(conf){
    return new Game(conf);
}