#include "colors.inc"
#include "textures.inc"
#include "stul.pov"
#include "monik.pov"
#include "klav.pov"
#include "mouse.pov"
#include "pc.pov" 
#include "stul.pov"

camera {
    location <-10, -5, 20>
    look_at <10, 2, 0>
}                    

light_source { <-3, 10, -3> White }    
//light_source { <12, 10, -3> White } 
//light_source { <-3, 10, -12> White }  
//light_source { <-3, 5, 12> White }  

//plane{ y,-10          // Пол
  //pigment { checker White,Grey scale 3 }
 //}

//background{ NeonBlue }


#declare parta=union{ 
object{
        monik
        scale 0.55
        translate<3,5.5,1>
    }
    object{
        klava
        scale 1.7
        translate<3,5.5,3>
    }
    object{
        mouse
        scale 1.5
        translate<1.3,5.5,3>
    }
    object{
        sb
        scale 1.3
        translate<-2.5,-4.5,1>
    }    
    
    object{
        monik
        scale 0.55
        translate<9.5,5.5,1>
    }
    object{
        klava
        scale 1.7
        translate<9.5,5.5,3>
    }
    object{
        mouse
        scale 1.5
        translate<8.3,5.5,3>
    }
    object{
        sb
        scale 1.3
        translate<15.6,-4.5,1>
    }
    object{
       stul11 scale 0.85    
       rotate <0,180,0>
        translate<10,4.5,0.7>
        } 
    object{
       stul11 scale 0.85    
       rotate <0,180,0>
        translate<16.3,4.5,0.7>
        }       

    box {<0,-4.5,0>,
        <0.5,5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        }
    box {<8+6.5,-4.5,0>,
        <0.5+14.5,5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        }
    box {<15,1,0.5>,
        <0,5,1>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        }
    box {<-0.5,5,0.5>,
        <15,5.5,5.5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                transform {
                          rotate <90,0,0>
                          }
                }
        }
        
    box {<8+7.1,0-4.5,0>,
        <0.5+14.9,1.5-4.5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        } 
         
    box {<15.3,1-5,0.5>,
        <15+3,0.5-5,5.5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                transform {
                          rotate <90,0,0>
                          }
                }
        }
    box {<8+10.1,0-4.5,0>,
        <0.5+17.9,1.5-4.5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        } 
        
    box {<8-8.1,0-4.5,0>,
        <0.5-0.9,1.5-4.5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        } 
         
    box {<15.2-18,1-5,0.5>,
        <15-15.5,0.5-5,5.5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                transform {
                          rotate <90,0,0>
                          }
                }
        }
    box {<8-11,-4.5,0>,
        <0.5-3.2,1.5-4.5,5>
        texture {
                pigment {
                        image_map { jpeg "opex.jpg" }
                        }
                }
        }         
      
        
        
        
    }
//object{
// parta scale 1.45 
// translate <0,0,0>
 
//}
