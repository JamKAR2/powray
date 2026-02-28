#include "colors.inc"
#include "textures.inc"   
#include "suma.pov"   
#include "gor1.pov" 
#include "gor2.pov" 
#include "stul.pov" 
#include "komp.pov"  
#include "shap.pov"
#include "stenu.pov"

camera {
location <-80, 9,40>
look_at <-70, 6, 30>
angle 60 
}

light_source { <10, 13,2> White}      
light_source { <15, 113,15> White}

plane{ y,-10          // Пол
  texture {
                pigment {
                        image_map { png "images.png" }  
                        }  
                  }
              }     

#declare css=union{ 
 object{
 stul11 scale 1
 rotate <0,90,0> 
 translate <4,0,-5>
 }

 object{
 stul11 scale 1
 rotate <0,90,0> 
 translate <4,0,1>
 } 

 object{
 stul11 scale 1
 rotate <0,90,0> 
 translate <4,0,9>
 } 

 object{
 stul11 scale 1
 rotate <0,90,0> 
 translate <4,0,16>
 } 

 box { <2, -10, 15.7>,
  < 9, 0, 16> 
   pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }

 box { <2, -10, 15.7-15>, < 9, 0, 16-15> 
   pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }

  box { <0, 0, 0>, < 10, 0.3, 16> 
  pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }             
 }

 box { <1.3+7, -7+0.3, 15.7>, < 2+7, 0+0.3, 1> 
  pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }
} 

#declare css2=union{
 box { <2, -10, 15.7>, < 9, 0, 16> 
   pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }

 box { <2, -10, 15.7-15>, < 9, 0, 16-15> 
   pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }

  box { <0, 0, 0>, < 10, 0.3, 16> 
  pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }             
 }

 box { <1.3+7, -7+0.3, 15.7>, < 2+7, 0+0.3, 1> 
  pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 } 

  box { <0+2.3, 0-8.5, 0+1>, < 8, 0.3-9, 16-12> 
  pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }             
 }

 box { <2, -10, 15.7-12>, < 9, 0, 16-12> 
   pigment{ image_map { png
            "textur-gas-kvas-com-l8tj-p-teksturi-parti-9.png" map_type 2 }
    }
 }

  #declare cut1=union{
  cylinder {
   <7, 1-2.5, 2>,
   <7, 3-2.5, 2>, 
   0.5
   texture { pigment 
            { color Black                         
                }                       
            }
        }
  }
 }

 cylinder {
   <7, 0.36, -25>,
   <7, 0, -25 >, 
   0.5
   texture { pigment 
            { color Black filter 0.8}
             finish {
                diffuse 1 
             }           
   }                      
 } 

 object{
 sumka scale 5
 rotate <90,-220,0> 
 translate <4,0.7,-17>
 }

 object{
 gor scale 5
 rotate <90,90,0> 
 translate <4,0.7,-8>
 }

 object{
 gor4 scale 5
 rotate <90,-40,0> 
 translate <4,0.7,-8>
 }  

 object{
 css
 translate <-1,0,-10.3>
 } 

 object{
 css2
 translate <-1,0,-26.7>
 } 
  //2 ряд
 object{
 css
 translate <-20,0,-10.3>
 } 

 object{
 css2
 translate <-20,0,-26.7>
 } 

 //3 ряд
 object{
 css
 translate <-40,0,-10.3>
 } 

 object{
 css2
 translate <-40,0,-26.7>
 }  

 //4 ряд
 object{
 css
 translate <-60,0,-10.3>
 } 

 object{
 css2
 translate <-60,0,-26.7>
 }

 //5 ряд
 object{
 css
 translate <-80,0,-10.3>
 } 

 object{
 css2
 translate <-80,0,-26.7>
 }

 //компы
 object{
 parta scale 1.35
 rotate <0,180,0> 
 translate <15,-4,44>
 }  

 object{
 parta scale 1.35
 rotate <0,180,0> 
 translate <-15,-4,44>
 } 

 object{
 parta scale 1.35
 rotate <0,180,0> 
 translate <-45,-4,44>
 } 

 object{
 parta scale 1.35
 rotate <0,90,0> 
 translate <-105,-4,35>
 }


object{
 parta scale 1.35
 rotate <0,90,0> 
 translate <-105,-4,5>
 } 

 //шкаф
 object{
 polna scale 1.45
 rotate <0,270,0> 
 translate <-95,0,-65>
 } 

 object{
 parta scale 1.35
 rotate <0,0,0> 
 translate <-75,-4,-65>
 } 

 object{
 parta scale 1.35
 rotate <0,0,0> 
 translate <-45,-4,-65>
 } 

 object{
 parta scale 1.35
 rotate <0,0,0> 
 translate <-15,-4,-65>
 }  

 object{
 stenu scale 1
 rotate <0,180,0> 
 translate <45,0,-65> 
 }

 object{
 stenu1 scale 1
 rotate <0,270,0> 
 translate <-105,0,-60>
 }   

 object{
 stenu2 scale 1
 rotate <0,180,0> 
 translate <45,0,46>
 }


 object{
 stenu3 scale 1
 rotate <0,90,0> 
 translate <48,0,38>
 }

 object{
 dvers1 scale 1.3
 rotate <0,180,0> 
 translate <32,-8,-67>
 }

 object{
 dvers2 scale 1.3
 rotate <0,0,0> 
 translate <-105.5,-8,-47>
 }

 


