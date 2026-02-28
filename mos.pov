#include "colors.inc"
  #include "golds.inc"
  camera {
   location <-20, 30, -30>
    look_at <0, 5, 0>
    angle 45
  }

    background { color rgb<0.2, 0.4, 0.8>  }
  light_source { <100, 100, -100> color rgb 1 } 
  
#declare mos1=union{
  box { <0, 0, 0>, 
          <1, 1, 1>   
  pigment{ image_map { png
            "11212121.png" map_type 2 }
    }             
 }
}

object{
mos1 scale 5
}