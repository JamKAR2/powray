#include "colors.inc"
#include "textures.inc"


camera {
location <50, 160,-120>
look_at <60, 20, 0>
}


light_source { <15, 103,-20> White} 


     
 plane{ y,-10          // Пол
   pigment { checker White,Blue scale 3 }
 }        
 
 
 
 
 
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
      
      
      
      
      
      
#declare stenu1=difference{
 box { <-7, -10, 0>, < 105, 30, 2>
     pigment{ color Orange}
 }   
 box { <15+10, -10, -10>, < 3+10, 18, 10>
     pigment{ color Red}
 }   
}
 



#declare stenu2=difference{
 box { <0, -30, 0>, < 150, 30, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" } 
                        }
                    }    
 }   
 box { <15+18+10, -10+15, -2>, < 3+10+10, 12+15, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" } 
                        }
                   }     
 }   

 box { <15+18+50, -10+15, -2>, < 3+10+50, 12+15, 2>
     texture {
                pigment {
                        image_map { png "images (1).png" } 
                        }
                  }      
 }   


 box { <15+18+90, -10+15, -2>, < 3+10+90, 12+15, 2>
     texture {
                pigment {
                        image_map {png "images (1).png" }
                        } 
        }   
    }
  }  
 
 
// #declare stenu3=difference{
// box { <-7, -10, 0>, < 80, 30, 2>
///    texture {
//                pigment {
 ///                       image_map {png "images (1).png" }
   // }   
  //} 
//}     
                        
            
       

  
  
//object{
//stenu 
//}   
//object{
//stenu1 
//}  
//object{
//stenu2 
//} 
//object{
//stenu3
//}