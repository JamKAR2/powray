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

#declare sb=union{
    box {<0,0,0>, <1.5,2.9,3>
        texture {
                pigment {
                        image_map { png "ssb.png" }
                        }
                transform { rotate <0,0,90> }
                transform { scale <3,3,1> }
                }
        }
}

//object{sb scale 2}