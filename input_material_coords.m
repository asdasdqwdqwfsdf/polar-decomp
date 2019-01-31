% Material coordinate input and range check
function xymat=input_material_coords(x,y)
in(1,1)=0;
xymat=[0 0];
while in==0
      disp('MATERIAL coordinates')
      xymat=input('input X and Y in [ ] brackets > ');
      if isempty(xymat)==0;
      in=inpolygon(xymat(1),xymat(2),x,y);
      end
      if isempty(xymat)==1; disp(' ');disp('empty input--try again');disp(' ');end
      if (isempty(xymat)==0) & (in==0) ;disp(' ');...
         disp('Material coordinates outside initial configuration');disp(' ');end
end