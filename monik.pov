#include "colors.inc"
#include "textures.inc"

//camera {
//    location <5, 10, 15>
//    look_at <0, 1, 0>
//}                    

//light_source { <-3, 10, -3> White }    
//light_source { <12, 10, -3> White } 
//light_source { <-3, 10, -12> White }  
//light_source { <-3, 5, 12> White }

//background{ NeonBlue }

//plane {y, 0
//    pigment { brick }
//}

#declare monik=union{
    // низ
    box {<0,0,0>, <5,0.2,3>
        texture {
                pigment { color Gray }
                }
        }
    // нога    
    box {<2,0.2,0.5>, <3,5,1.5>
        texture {
                pigment { color Gray }
                }
        }
    //экран
    box {<-2.5,2,1.5>, <7.5,8,2>
        texture {
                pigment {
                        image_map { jpeg "rab.jpg" }
                        transform { scale <10,8,0> }
                        transform { translate <-2.5,0,0> }
                        }
                }
        }
}

//object{monik}