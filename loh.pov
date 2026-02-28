////////////////////////////////////////////
//
//     Autor: Antonio Castro Snurmacher
//
////////////////////////////////////////////


#include "colors.inc"
#include "textures.inc"
#include "glass.inc" 
#include "Libro.inc" 
#include "Disquete.inc"

#declare Plastico = finish {
      ambient 0.4
      diffuse 0.45
      reflection 0.15
      phong 0.3
      phong_size 20
}

#declare Camera_pl_general = camera {
  location <0,45, -20>
  look_at <80, -20, 200>
  angle 20
}
#declare Camera_detalle_vaso = camera {
  location <0,45, -20>
  look_at <97,-6, 170>
  angle  3.2
}
#declare Camera_detalle_botella = camera {
  location <0,45, -20>
   look_at <45,0, 190>
  angle  8
}
#declare Camera_detalle_papel = camera {
  location <0,45, -20>
   look_at < 85, -10, 145>
  angle 10
}

//camera { Camera_detalle_botella }
//camera { Camera_detalle_vaso }
//camera { Camera_detalle_papel }
camera { Camera_pl_general }


// Fuente de luz blanca en el techo
  light_source {
  <0, 40, 90>
  color White
  }

// Fuente de luz tenue de mesa
  light_source {
    <0, 40, 190>
    color White
    spotlight
    radius 8
    falloff 12
    tightness 10
    point_at
   // < 70, -10, 160>
    < 65, -10, 155>
  }


#declare Cubilete = object {
   intersection {
     cylinder { <0,0,0> <0,6,0>   2 }
     cylinder { <0,1,0> <0,6.5,0> 1.9
               inverse }
   }
}

#declare GloboTierra = object {
   union{
      union{
         sphere { <0,0,0> 1
            texture {
               pigment{
                  image_map {
                     gif "gifs/geoideok.gif"
                     map_type 1  // Esfera
                  }
               }
               finish { Plastico }
            }
            interior{ I_Glass}
            //rotate y*25
            rotate y*-25
         }
         cylinder { <0,-1.28, 0>
                    <0, 1.28, 0> 0.1
              texture {
                  Bronze_Metal }
          interior{ I_Glass}
         }
         intersection {
              sphere { <0,0,0> 1.28 }
              box { <0,-1.5,-0.06>
                    <1.5, 1.5, 0.06> }
              sphere { <0,0,0> 1.1 inverse }
              texture {
                Bronze_Metal }
                   interior{ I_Glass}
             }
         rotate z*-20
      }
      union{  // pie
         cylinder { <0, -1.1, 0>
                    <0, -1.8, 0> 0.15
              texture { Bronze_Metal }
              interior{ I_Glass}
         }
         cone { <0, -1.8, 0> 1
                <0, -1.6, 0> 0.7
              texture {
                  pigment { DMFDarkOak }
                  scale <0.3, 0.3, 0.3>
              }
            interior{ I_Glass}
         }
      }
   }
   translate <0, 1, 0>
   scale <7,7,7>
}


#declare VasoAgua = object {
   intersection {
   cone { <0, 0, 0> 2.5  <0,7,0> 2.9 }
   cone { <0, 4, 0> 2.45 <0,7.5,0> 2.8
          inverse }
   }
   texture { Glass2
    normal {
      bump_map {
        gif "gifs/vaso_norm.gif"
        map_type 2    // Clindro
        bump_size  0.5
      }
    }
    scale <7,7,7>
  }
  interior{ I_Glass}
}

#declare BotellaAgua = object {
  union {
    intersection {
      merge {
        cylinder { < 0, 18.1, 0>
                   < 0, 20  , 0>  0.9 }
        cone     { < 0, 14  , 0>  2.9
                   < 0, 18.1, 0>  0.9 }
        sphere   { < 0, 12.5, 0>  3.3 }
        cylinder { < 0,  0  , 0>
                   < 0, 12  , 0>  3.2 }
      }
      merge {
        cylinder { < 0, 18  , 0>
                   < 0, 20.1, 0>  0.8 }
        cone     { < 0, 13.9, 0>  2.8
                   < 0, 18.0, 0>  0.8 }
        sphere   { < 0, 12.4, 0>  3.2 }
        cylinder { < 0,  6  , 0>
                   < 0, 12.5, 0>  3.1 }
        inverse
      }
      texture { Glass2
        normal {
          bump_map {
            gif "gifs/botella_norm.gif"
            map_type 2    // Clindro
            bump_size 1
          }
        }
        scale <15, 15, 15>
      }
      interior{ I_Glass}
   }



   cylinder { < 0, 20, 0>
              < 0, 19, 0> 1.1 // Tapon
       texture {
         pigment {Blue}
         finish { Plastico }
       } // fin Tapon
       interior{ I_Glass}
     }
  }
}

#declare Papel = object {
  box { <0,0,0,> <1,1,1>  }
  texture {
        pigment{ image_map { gif
                         "gifs/hoja.gif" }
        }
        finish { ambient 0.4 diffuse 0.6 }
  }
  interior{ I_Glass}
  rotate x*90
  scale <12, 0.001, 20>
}

#declare RadLapiz = 0.3;
#declare Lapiz = object {
  union {
     cylinder { <0,0,0> <0,7.5,0>
        RadLapiz
        texture { pigment { DMFDarkOak }}
        interior{ I_Glass}
     }
     cylinder { <0,7.5,0> <0,8.5,0>
        RadLapiz
        texture { Gold_Metal }
     }
     cone { <0,0,0>RadLapiz <0,-0.8,0>
        0.1
        texture { pigment { White_Wood } }
        interior{ I_Glass}
     }
     cone { <0,-0.8,0> 0.1 <0,-1, 0> 0
        texture { pigment { Black } }
        interior{ I_Glass}
     }
  }
}

#declare Paredes = object {
    box { <-100,-50, -50> <100,80, 200> }
    texture {
        pigment{ image_map { gif
                      "gifs/gotelet.gif" }
        }
        finish { ambient 0.3 diffuse 0.6 }
        rotate y*45
        scale <5, 7, 5>
    }
    interior{ I_Glass}
}

#declare TextuSuelo = texture {
   pigment { checker color Black color Blue}
}

#declare Suelo = object {
    plane { y, -49.9 }
    texture { PinkAlabaster }
interior{ I_Glass}
}

#declare Mesa = object {
  union {
     box { < -80, -10.001, 140>
           < 100, -13    , 200> }
     box { < -79, -50, 141>
           < -75, -10, 145> }
     box { <  99, -50, 199>
           <  95, -10, 195> }
     box { < -79, -50, 199>
           < -75, -10, 195> }
     box { <  99, -50, 141>
           <  95, -10, 145> }
  }
  texture {
            EMBWood1
            rotate y*90
            rotate x*90
            scale <5,5,5>
     finish {
        ambient 0.1
        diffuse 0.1
        specular 1
        reflection 0.2
        roughness .1
     }
  }
interior{ I_Glass}
}

object {GloboTierra
   translate <90, -4, 190>
}
object { Paredes }
object { Suelo }
object { Mesa }
object { Lapiz
   rotate z*10
   translate < 70, -10, 165>
}
object { Cubilete
   translate < 70, -10, 165>
   texture { pigment { White_Wood } }
   interior{ I_Glass}
}
object { VasoAgua
   translate <97,-10, 170>
}
object { BotellaAgua
   translate <45,-10, 190>
}


object { Lapiz
   rotate z*90
   translate < 80, -10+(RadLapiz/2), 155>
}

object { Papel
   rotate y *-30
   translate < 85, -10, 145>
}

// ***** Libro LinuxBible *****
#declare LargoLibro   = 20;
#declare AnchoLibro   = 12;
#declare GruesoLibro  = 4.5;
#declare PortadaLibro =
           "gifs/bookp2.gif"
#declare LomoLibro    =
           "gifs/bookl2.gif"
#include "Libro.inc"
object { Libro
   rotate x*90
   rotate y *-60
   translate <36, -10, 165>
}

// ***** Varios Libros *****
#declare LargoLibro   = 20;
#declare AnchoLibro   = 12;
#declare GruesoLibro  = 13;
#declare PortadaLibro =
         "gifs/bookp1.gif"
#declare LomoLibro    =
         "gifs/bookls1.gif"
#include "Libro.inc"
object { Libro
   rotate x*90
   rotate y *-90
   translate <55, -10, 195>
}

#declare TamDisquete  = 5;
#declare PortadaDisquete =
            "gifs/disquete1.gif"
#include "Disquete.inc"
object { Disquete
  rotate x*90
  translate <80, -10, 147>
}

#declare TamDisquete  = 5 ;
#declare PortadaDisquete =
        "gifs/disquete2.gif"
#include "Disquete.inc"
object { Disquete
  rotate x*90
  rotate y*30
  translate <90, -10, 165>
}
// vim: set sw=2 ts=2 et :