import {Scene} from "phaser"


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

export function createScene (p,c,u,conf){
    return new XtScene(p,c,u,conf);
}