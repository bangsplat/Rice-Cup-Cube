//
// rice cup
//	cube type
//
// rice cooker cups are a standard 180 ml
// which is 180000 mm^3
// 

$fa=0.1;

BASE=55;
TOP=BASE*1.2;
AVGDIAM=(BASE+TOP)/2;
VOLUME=180000;
PI=3.14159;
HEIGHT=VOLUME/((AVGDIAM/2)*(AVGDIAM/2)*PI);

WALLS=2;

echo( "Interior base diameter:", BASE );
echo( "Interior top diameter: ", TOP );
echo( "Interior average diameter: ", AVGDIAM );
echo( "Interior height: ", HEIGHT );

difference() {
	// rice cup exterior
	translate( v=[0,0,(HEIGHT+WALLS)/2] ) {
		cube( size=[HEIGHT+(WALLS*3),HEIGHT+(WALLS*3),HEIGHT+WALLS], center=true );
	}
	// rice cup interior
	translate( v=[0,0,WALLS+0.01] ) {
		cylinder(r1=(BASE/2),r2=(TOP/2),h=HEIGHT);
	}
}
