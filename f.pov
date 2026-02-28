#include "colors.inc"
#include "golds.inc"

camera {
  location <5, 7.5, -15>  
  look_at <0, 2.5, 0>   
 // angle 45
}
     
//     plane { y, -10      // Дальняя стена
//   pigment { checker Yellow White scale 4 } 
// }    
//background { color rgb<0.2, 0.4, 0.8> }
//light_source { <50, 50, -50> color rgb 1 } 
 
 #declare f=difference{ 
 //light_source { <0, 25, 0> color rgb 1 } 
 sor  {
  12,
  <0.0, -0.75>,   
  <0.65, 1.0>,    
  <0.65, 2.1>,    
  <0.6, 2.7>,     
  <0.55, 3.0>,    
  <0.65, 3.05>,   
  <0.7, 5.0>,     
  <0.7, 5.5>,     
  <0.2, 6.0>,     
  <0.15, 6.55>,   
  <0.1, 6.6>,    
  <0.1, 6.65>    
  open
  texture{
  pigment {color White filter 0.7 }
 }  
 }
    sor {
    12,
    <0.0, -0.75>,   
     <0.60, 1.0>,    
    <0.60, 2.1>,    
    <0.55, 2.7>,     
    <0.50, 3.0>,    
    <0.60, 3.05>,   
    <0.65, 5.0>,     
    <0.65, 5.5>,     
    <0.15, 6.0>,     
    <0.10, 6.55>,   
    <0.05, 6.6>,    
    <0.05, 6.65>    
    open      
    texture {
     pigment {color Blue filter 0.8}

    }  
  }
  
    
}


#declare f1=union{
 object{
  f
  } 
sor {
 7,
  <0.0, -0.75>,   
  <0.55, 1.0>,    
  <0.55, 2.1>,    
  <0.50, 2.7>,     
  <0.45, 3.0>,    
  <0.55, 3.05>,   
  <0.60, 5.0> 

         
  texture {
   pigment {color Blue filter 0.8}
  }
 }
} 
  
//object{
//f1
//} 
  





