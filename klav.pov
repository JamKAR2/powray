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

#declare klava=union{
    box {<0,0,0>, <2,0.05,1>
        texture {
                pigment {
                        image_map { jpeg "klava.jpg" } 
                        }        
                transform { rotate <90,180,0> }
                transform { scale <2,2,1> }
                }
        }
}

//object{klava scale 3}