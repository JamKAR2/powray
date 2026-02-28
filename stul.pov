 #include "colors.inc"
#include "textures.inc" 

 camera { 

   location <-25, 3, 5> 
   look_at <10, 3, -10> 

 }

// light_source { <-3, 10, -3> White  }
 // light_source { <-3, 30, -30> White  }
 //background{ NeonBlue} 
 
// plane{ y,-10 //Плоскость в пространстве.
 //  pigment { brick } //Рисунок на плоскости. 
                                         //Сhecker-шахматная доска из 
                                         //белых и красных квадратов размера 3.
 //} 



#declare stul11=union{
box { <7, -4, -6>,                //ОСНОВАНИЕ СТУЛА 
     <2, -3.7, -0.3>               
     pigment{ image_map { png
            "textur-gas-kvas-com-858k-p-besshovnie-teksturi-derevo-svetloe-natural-27" map_type 2 }
    }                        
 }   

box { <2.4, -4, -6>,                //ОСНОВАНИЕ СТУЛА 
     <2.1, -4.2, -1>               
     texture {                  
        pigment { color Grey } 
     }                          
 }   
 box { <6.8, -4, -6>,                //ОСНОВАНИЕ СТУЛА 
     <6.5, -4.2, -1>               
     texture {                  
        pigment { color Grey } 
     }                          
 }                     
  
 box { <6.8, 1.5, -6.5>,                //Ножка СТУЛА 
     <6.4, -10, -6>               
     texture {                  
        pigment { color Grey } 
     }                          
 } 
 
 box { <2.8, 1.5, -6.5>,                //Ножка СТУЛА 
     <2.4, -10, -6>               
     texture {                  
        pigment { color Grey } 
     }                          
 }   
 
  box { <2.8, -9.5, -8>,                //Нижняя ножка стула 
     <2.4, -10, -2>               
     texture {                  
        pigment { color Grey } 
     }                          
 }  
 
 box { <6.8, -9.5, -8>,                //Нижняя ножка стула 
     <6.4, -10, -2>               
     texture {                  
        pigment { color Grey } 
     }                          
 }  
  box { <6.8, -9.4, -2>,                //Заглушка  
     <6.4, -10, -1.5>               
     texture {                  
        pigment { color Black } 
     }                          
 }   
 box { <2.8, -9.4, -2>,                //Заглушка  
     <2.4, -10, -1.5>               
     texture {                  
        pigment { color Black } 
     }                          
 }   
  box { <2.8, -9.4, -8.5>,                //Заглушка  
     <2.4, -10, -8>               
     texture {                  
        pigment { color Black } 
     }                          
 }  
 box { <6.8, -9.4, -8.5>,                //Заглушка  
     <6.4, -10, -8>               
     texture {                  
        pigment { color Black } 
     }                          
 }
    
    box { <7.5, 2.5, -6>,                //Спинка СТУЛА 
     <2, -1, -5.6>               
     pigment{ image_map { png
            "textur-gas-kvas-com-858k-p-besshovnie-teksturi-derevo-svetloe-natural-27" map_type 2 }
    }                         
 }
 box { <6.8, 1.6, -6.5>,                //Верхняя Заглушка  
     <6.4, 1.5, -6>               
     texture {                  
        pigment { color Black } 
     }                          
 } 
 box { <2.8, 1.6, -6.5>,                //Верхняя Заглушка  
     <2.4, 1.5, -6>               
     texture {                  
        pigment { color Black } 
     }                          
 }   
    
 sphere { <2.5, -3.7, -5>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 } 
 sphere { <2.5, -3.7, -1.5>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 } 
  sphere { <6.5, -3.7, -1.5>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 } 
 sphere { <6.5, -3.7, -5>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 } 
 sphere { <2.7, -0.5, -5.6>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 } 
 sphere { <2.7, 1, -5.6>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 }  
 sphere { <6.65, 1, -5.6>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 }  
 sphere { <6.65, -0.5, -5.6>, //Центр шара. 
         0.15          //Радиус 
         texture {
            pigment { color Grey }
         }
 }
 box { <3, -9.6, -6.2>,                //Ножка Стула 
     <7, -10, -6.5>               
     texture {                  
        pigment { color Grey } 
     }                          
 }  
 box { <2.4, -4.3, -0.7>,                //Заглушка  
     <2.1, -4, -1>               
     texture {                  
        pigment { color Black } 
     }                          
 } 
 box { <6.8, -4.3, -0.7>,                //Заглушка  
     <6.5, -4, -1>               
     texture {                  
        pigment { color Black } 
     }                          
  }
} 

//object{
//stul11 scale 1
//}