#include "colors.inc"
#include "textures.inc"



#declare tabl=union {
box {<0,0,0>,
      <1,1,0.01> 
      
      pigment{ image_map { png
            "4.png"  }
    }
       
 }
}


#declare tabl1=union {
box {<0,0,0>,
      <1,1,0.01> 
      
      pigment{ image_map { png
            "5.png"  }
    }
       
 }
}

#declare tabl2=union {
box {<0,0,0>,
      <1,1,0.01> 
      
      pigment{ image_map { png
            "6.png"  }
    }
       
 }
}

//object {tabl scale 5} 