#include "colors.inc"
#include "textures.inc"  
#include "tabl1.pov"


 
 
camera {
location <20, 15,30>
look_at <40, 10,0>
}



//light_source { <-15, 10,-10> White}        
 
//light_source { <15, 10,10> White}  

     
//plane{ y,-10   
//pigment { checker Black,White scale 4 }
//} 
 
 
 
 
 
 
 
 #declare stenu=difference{
 box { <-7, -10, 0>, < 152, 30, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" }  
                        }  
                  }
 }   
 box { <15+10, -10, -10>, < 3+10, 18, 10>
     texture {
                pigment {
                        image_map { png "images (1).png" }  
                        }  
                  }
 }   
}
      
      
      
      
      
      
#declare stenu1=difference{
 box { <-7, -10, 0>, < 105, 30, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" }  
                        }  
                  }
 }   
  box { <15+10, -10, -10>, < 3+10, 18, 10>
     texture {
                pigment {
                        image_map { png "images (1).png" }  
                        }  
                  }
 }   
}



#declare stenu2=difference{
 box { <0, -30, -8>, 
 < 150, 30, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" }  
                        }  
                  }
 }   
  box { <15+18+10, -10+15, -5+2>, 
  < 3+10+10, 12+15, 5+2>
     texture {
                pigment {
                        image_map { png "fon1.png" }  
                        }  
                  }
 }
 
box { <15+18+50, -10+15, -5+2>,
 < 3+10+50, 12+15, 5+2>
     texture {
                pigment {
                        image_map { png "fon1.png" }  
                        }  
                  }
 }   


box { <15+18+90, -10+15, -5+2>, 
< 3+10+90, 12+15, 5+2>
     texture {
                pigment {
                        image_map { png "fon1.png" }  
                        }  
                  }
 }      
}
 
 
 #declare stenu3=union{
 box { <-7, -10, 0>, < 105, 30, 2>
     texture {
         pigment {
             image_map { png "images (1).png" }  
         }
         finish {
             ambient 0.1
             diffuse 0.9
             specular 0.1
         }
     }
 }   
 
 // Зеленая область - ИСПРАВЛЕНО: на поверхности стены
 box { <-7+14, -10+11+5, 2.1>, < 20+16, 6+11+4+5, 2.6>
     texture {
         pigment {color Green}
         finish {
             ambient 0.1
             diffuse 0.9
         }
     }
 }
 
 // Белая область - ИСПРАВЛЕНО: на поверхности стены
 box { <-7+14+40, -10+11+5, 2.1>, < 20+16+40, 6+11+11, 2.6>
     texture {
         pigment {color White}
         finish {
             ambient 0.1
             diffuse 0.9
         }
     }
 }   
 
 // ПЕРВЫЙ ВЫКЛЮЧАТЕЛЬ (справа от белого объекта)
 union {
     // Основание выключателя
     box { <-7+14+40+25, -10+11+5+3, 2.1>, 
           <-7+14+40+28, -10+11+5+6, 2.6>
           texture {
               pigment {color rgb <0.3, 0.3, 0.3>}
               finish {
                   ambient 0.1
                   diffuse 0.8
                   specular 0.2
               }
           }
     }
     // Клавиша выключателя
     box { <-7+14+40+25.5, -10+11+5+3.5, 2.6>, 
           <-7+14+40+27.5, -10+11+5+5.5, 3.1>
           texture {
               pigment {color White}
               finish {
                   ambient 0.1
                   diffuse 0.9
                   specular 0.1
               }
           }
     }
 }
 
 // ВТОРОЙ ВЫКЛЮЧАТЕЛЬ
 union {
     // Основание выключателя
     box { <-7+14+40+32, -10+11+5+3, 2.1>, 
           <-7+14+40+35, -10+11+5+6, 2.6>
           texture {
               pigment {color rgb <0.3, 0.3, 0.3>}
               finish {
                   ambient 0.1
                   diffuse 0.8
                   specular 0.2
               }
           }
     }
     // Клавиша выключателя
     box { <-7+14+40+32.5, -10+11+5+3.5, 2.6>, 
           <-7+14+40+34.5, -10+11+5+5.5, 3.1>
           texture {
               pigment {color White}
               finish {
                   ambient 0.1
                   diffuse 0.9
                   specular 0.1
               }
           }
     }
 }
}

#declare dvers1=union{
object {tabl scale 5 rotate <0,270,0> translate <2,10,2.5> }
object {tabl1 scale 5 rotate <0,270,0> translate <-1, 7, 2>} 
object {tabl2 scale 2 rotate <0,270,0> translate <-1, 14, 3.5>} 
       
 box { <0,0,0>, 
 <  1, 20, 9>
    texture {
                pigment {
                        image_map { png "IMG_3752.png" }  
                        }  
                  } 
 }
 
    

 box {<0+1,0+7.7,0+2+2.5>,
      <0.2+1,0.2+8,2+2+3.5> 
      pigment{ color Black}
 
 } 
   
#declare dvers2=union{ 
       
 box { <0,0,0>, 
 <  1, 20, 9>
    texture {
                pigment {
                        image_map { png "IMG_3752.png" }  
                        }  
                  } 
 }
 
    

 box {<0+1,0+7.7,0+2+2.5>,
      <0.2+1,0.2+8,2+2+3.5> 
      pigment{ color Black}
 
 } 
    
 
}

}
 
 
  


//object{
//stenu3 
//} 
  
//object{
//dvers2 
//}