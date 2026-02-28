 #include "colors.inc"
  #include "golds.inc"
  camera {
    location <10, 20, -30>
    look_at <0, 5, 0>
    angle 45
  }

  //  background { color rgb<0.2, 0.4, 0.8>  }
 // light_source { <100, 100, -100> color rgb 1 } 
  
#declare gor4=union{
   box { <0, 0, 0>, 
          <1, 0.9, 0.1>   
      pigment{ image_map { gif
            "1.gif"}
      }  
   } 
}

//object{
//gor4 scale 5
//}