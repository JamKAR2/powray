#include "colors.inc"
#include "textures.inc"
#include "f.pov"
#include "fgff.pov"  



camera {            
location <5,15, -60>
look_at <8, 5, 0>  
rotate <0,0+clock*480,0> 
}                         

 #declare DoorClock =
    ( clock < 0.5
        ? clock*2
        :   (1.0-clock)*2
        );

//     light_source { <60, 10, 3> White }
//  light_source { <-20, 5, 40>  White }           

// background{ NeonBlue}

//plane { y, -10      // Дальняя стена
//   pigment { checker Grey White scale 4 } 
// }    
                        
#declare polka = union{
    box { <0, 0, 0>, 
          <10, 0.3, 6>   
      texture{
        pigment { color White    }
      }
 }
}

//object{
// polka
// translate<0,-10,0>
//}

//object{
// polka
// translate<0,-5,0>
//}
 
//object{
// polka
// translate<0,0,0>
//} 

//object{
 //polka
// translate<0,5,0>
//}

//object{
// polka
 //translate<0,13,0>
//}

//object{
// polka
// translate<0,18.2,0>
//}

#declare stena = union{
    box { <10.5, 28.5, 0>, 
          <10, 0, 6>   
      texture{
        pigment { color White    }
      }
 }
}

//object{
 //stena
 //translate<0,-10,0>
//}  

//object{
// stena
// translate<-10,-10,0>
//}     

#declare dvernoyproyom = union{
    box { <0.1, 10, -0.01>, 
          <5, 0.3, 0>   
      texture{
        pigment { color White filter 0.8   }
      }
 }
}  

//object{
 //dvernoyproyom
 //translate<5,-10,0>
//}   

//object{
 //dvernoyproyom
 //translate<0,-10,0>
//}    
 
#declare dvernoyproyom2 = union{
    box { <0.1, 28.2, -0.01>, 
          <5, 10.3, 0>   
      texture{
        pigment { color White filter 0.8   }
      }
 }

box { <2.5, 19, -0.5>, 
          <3, 12, 0>   
      texture{
        pigment { color Black filter 0.8   }
      }
 }
} 
#declare dvernoyproyom3 = union{  
    box { <0.1, 28.2, -0.01>, 
          <5, 10.3, 0>   
      texture{
        pigment { color White filter 0.8   }
      }
 } 
box { <2, 19, -0.5>, 
          <2.5, 12, 0>   
      texture{
        pigment { color Black filter 0.8   }
      }
 }
} 
//object{ 
//dvernoyproyom2
//translate<0,-10,0>
//rotate <0,DoorClock*90,0>   
            


//object{
//dvernoyproyom3
//translate<5,-10,0>  
//translate<-10,0,0> 
//rotate <0,-DoorClock*90,0>
//translate<10,0,0> 
    


#declare rychka = union{
    box { <11, 9, -0.5>, 
          <11.5, 7, 0>   
      texture{
        pigment { color Black filter 0.8   }
            }
        }
    } 

//object{
 //rychka
 //translate<-5,-10, 0>
//}

//object{
 //rychka
 //translate<-7.3,-10, 0>
//}          

#declare vaa = union{
    box { <11, -5.9, 0>, 
          <10, -1, 4.8>   
      texture{
        pigment { color White   }
      }
 }
}

//object{
 //vaa
 //translate<-9.5,12,0>
//}

#declare stena3 = union{
    box { <0.1, 15.2, -0.01>, 
          <10, 0.3, 0>   
      texture{
        pigment { color White}
 
      } 
 }
}


//object{
 //stena3
 //translate<0.5,-10, 5.5>
//} 
     
         
         
         
#declare stena4 = union{
    box { <0.1, 5.2, -0.01>, 
          <10, 0.3, 0>   
      texture{
        pigment { color White   }
      }
 }
}

//object{
 //stena4
 //translate<0.5,13, 5.5>
//}

//#declare rychka1 = union{
  //  box { <11, 19, -0.5>, 
    //      <11.5, 12, 0>   
      //texture{
       // pigment { color Black filter 0.8   }
      //}
 //}
//} 

//object{
 //rychka
 //translate<-5,-10, 0>
 //rotate <0,0+clock*83,0>
//}

//object{
 //rychka     
 //translate<-7.3,-10, 0>
 //rotate <0,0+clock*83,0>
//}  


//object{
// f1    scale 0.7
// translate<3,12.5, 2>
//}

//object{
// f2    scale 0.5
// translate<5,5.3, 2>
//}


 #declare polna = union{  
  object{
 polka
 translate<0,-10,0>
}

object{
 polka
 translate<0,-5,0>
}
 
object{
 polka
 translate<0,0,0>
} 

object{
 polka
 translate<0,5,0>
}

object{
 polka
 translate<0,13,0>
}

object{
 polka
 translate<0,18.2,0>
}

object{
 stena
 translate<0,-10,0>
}  

object{
 stena
 translate<-10,-10,0>
} 
object{
 dvernoyproyom
 translate<5,-10,0>
}   

object{
 dvernoyproyom
 translate<0,-10,0>
} 

object{ 
dvernoyproyom2
translate<0,-10,0>
rotate <0,DoorClock*90,0>   
    }        


object{
dvernoyproyom3
translate<5,-10,0>  
translate<-10,0,0> 
rotate <0,-DoorClock*90,0>
translate<10,0,0> 
 }
 object{
 rychka
 translate<-5,-10, 0>
}

object{
 rychka
 translate<-7.3,-10, 0>
} 

object{
 vaa
 translate<-9.5,12,0>
} 
object{
 stena3
 translate<0.5,-10, 5.5>
}
object{
 stena4
 translate<0.5,13, 5.5>
}
object{
f1    scale 0.7
translate<3,12.5, 2>
}

object{
 f2    scale 0.5
 translate<5,5.3, 2>
    }  
  }  
  
  
//object{
// polna    scale 1
 //translate<5,5.3, 2>
  //  }  
  
     