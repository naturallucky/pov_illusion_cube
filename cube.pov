//
#version 3.7;

#include "colors.inc"
#include "skies.inc"


global_settings {
	assumed_gamma 2.2
	max_trace_level 9
}



camera {
	location <6,3,-6+sin(clock*pi*2-pi/2)*16>
	look_at <0,9,0>
	angle 30
}

light_source { <1, 10, -10> color rgb 1}
//light_source { <0, 10, 0> color rgb 1.3}
light_source { <-1, 10, 3> color rgb 1.3}
light_source { <0, 0, -3> color rgb 1.3}
light_source { <3, 0, -3> color rgb 1.3}
//light_source { <0, -3, -10> color rgb 1.3}

/*
box{<-1000,200,-1000><1000,200.1,1000>
	pigment {color rgb <.3,.3,1>
	}
}*/
sky_sphere {
    S_Cloud4
}


box
{<-1000,-5,-1000><1000,-5.1,1000>
	pigment{color 
	//	<1, .6,.1>
	<.3,.3,.6>
	}
}

//low plane
#declare sz = 1.5;
#declare ics = .3;
union {
polygon{5,<0,0><0,sz><sz,sz><sz,0><0,0>
	pigment {
		checker White,color rgb<.3,0.3,0.9> 
		scale ics
	}
	translate<-sz/2,-sz/2,0>
	translate <0,0,sz/2>
}
polygon{5,<0,0><0,sz><sz,sz><sz,0><0,0>
	pigment {
		checker White,color rgb<.2,0.5,0.2>
		scale ics
	}
	translate<-sz/2,-sz/2,0>
	rotate x*90
	rotate z*180
	
	translate<0,sz/2,0>
}

polygon{5,<0,0><0,sz><sz,sz><sz,0><0,0> 
	pigment {
		checker White,color rgb<.7,0.3,0.3>
		scale ics
	}
	translate<-sz/2,-sz/2,0>
	rotate y*90
	//rotate z*90
	
	translate<-sz/2,0,0>
}
translate <0,sz+8,0>
//rotate <30,30,0>
}
