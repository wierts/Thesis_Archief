size(400);
pair O=(0,0);
// triangle
pair[] ptriangle={(-186,-92),(186,-92),(0,185),};

pen penT=darkblue+1bp;
pen penEl=orange+1bp+linetype(new real[] {5,3,2,3});
// draw triangle
draw(ptriangle[0]--ptriangle[1]--ptriangle[2]--cycle,penT);

// a fucntion to draw an ellipse defined by the center and x- and y-scale factors
void ellipse(pair center,real xs,real ys,pen p=currentpen){
  draw(shift(center)*scale(xs,ys)*unitcircle,p);
};

ellipse(ptriangle[2],255,120,penEl);
ellipse(ptriangle[0],180,140,penEl);
ellipse(ptriangle[1],180,140,penEl);

guide[] thickArr={
  (-147,161)..(-224,68)..(-210,-38),
  (206,159)..(280,67)..(264,-34),
  (-105,-157)..(-4,-208)..(95,-168),
};

pen squarecap=linecap(0);
pen roundcap=linecap(1);
pen extendcap=linecap(2);

pen dashed=squarecap+linetype(new real[] {1.5,1.5}); // set up dashed pattern

pen penThickArr=dashed+2bp;
pen penThinArr=red+extendcap;

for(int i=0;i<thickArr.length;++i){
  draw(thickArr[i], penThickArr,Arrows(size=5));
}

guide[] thinArr={
  (-68,-35)--(67,-35),
  (69,-12)--(10,99),
  (-8,101)--(-67,-13),
};

for(int i=0;i<thickArr.length;++i){
  draw(thinArr[i], penThinArr,Arrows);
}

string[] planeLabel={"MNE","Subsidiary 1","HQ","Subsidiary 2"};

pair[] planeLabelPos={(0,40),(143,-58),(2,106),(-149,-57)};
pair[] planeLabelAlign={
  O,W,N,E
};

defaultpen(fontsize(10pt));

for(int i=0;i<planeLabel.length;++i){
  label(planeLabel[i],planeLabelPos[i],planeLabelAlign[i]);
}

pair[] listLabelPos={(0,235),(187,-149),(-210,-142)};

string[] listLabel={
  minipage("\textit{Home Country Context}"
  +"\begin{itemize}"
  +"\item Resources" 
  +"\item Institutions" 
  +"\end{itemize}"
  ,width=120pt),
  minipage("\textit{Host Context 1}"
  +"\begin{itemize}"
  +"\item Resources" 
  +"\item Institutions" 
  +"\end{itemize}"
  ,width=100pt),
  minipage("\textit{Host Context 2}"
  +"\begin{itemize}"
  +"\item Resources" 
  +"\item Institutions" 
  +"\end{itemize}"
  ,width=100pt),
};

pair[] listLabelAlign={O,O,O};

for(int i=0;i<listLabel.length;++i){
  label(listLabel[i],listLabelPos[i],listLabelAlign[i]);
}