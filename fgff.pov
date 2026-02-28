#include "colors.inc"
  #include "golds.inc"
  camera {
    location <10, 15, -30>
    look_at <0, 5, 0>
    angle 45
  }

   // background { color rgb<0.2, 0.4, 0.8>  }
 // light_source { <100, 100, -100> color rgb 1 }

#declare fgff=difference{   
//light_source { <0, 8, 0> color White }
sor {
  7,
  <0.0, -1.5>,   
  <2.0, 0.0>,       
  <3.5, 2.0>,        
  <4.0, 4.0>,       
  <3.5, 7.0>,      
  <3.3, 8.0>,        
  <3.0, 9.0>        
        
  open
  texture { 
  pigment {color Pink}
    }
  }
}  
  
#declare f2=union{
 object{
  fgff
  }
 
sor {
 7,
 <0.0, -1.5>,   
  <1.9, 0.0>,       
  <3.4, 2.0>,        
  <3.9, 4.0>,       
  <3.4, 7.0>,      
  <3.2, 7.1>,        
  <2.9, 7.2> 
     
  texture {
   pigment {color Brown }
  }
 }
}   
  
//object{
//f2 
//}                               
     
   