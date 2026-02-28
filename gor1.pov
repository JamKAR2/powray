#include "colors.inc"
  #include "golds.inc"
  camera {
    location <10, 20, -30>
    look_at <0, 5, 0>
    angle 45
  }

 //   background { color rgb<0.2, 0.4, 0.8>  }
  //light_source { <100, 100, -100> color rgb 1 } 
  
#declare gor=union{
   box { <0, 0, 0>, 
          <1, 0.8, 0.1>   
      pigment{ image_map { gif
            "2.gif"}
      }  
   } 
}

//object{
//gor scale 5
//}