var i,a,b,c,j,z,d,err,k,a1,a2,i2 : integer;
var r : array [1..100,1..2] of integer;
var min,max,t,t2 : real;

begin
t:=3/8;
//writeln(t);
read(a,b,c);
k:=1;
for i:=1 to a do
    begin
         for j:=1 to a do
             begin
                 if (((j/i)>(1/b)) and ((j/i)<(1/c))) then
                    begin
                         if (((j div i)=0) and ((j mod i) <>0)) then
                            begin
                                 for d:=2 to a do
                                     begin
                                          if (((i mod d) =0) and ((j mod d) =0)) then err:=1;
                                     end;
                                 if err=0 then
                                              begin
                                                   r[k,1]:=j;
                                                   r[k,2]:=i;
                                                   inc(k);
                                              end;
                                 err:=0;
                            end;
                    end;
             end;
    end;



//for i:=1 to k-1 do writeln(r[i,1],'/',r[i,2]);

//writeln(k);
min:=r[1,1]/r[1,2];
//writeln(min);

for i:=1 to k-1 do
    begin
       t:=r[i,1]/r[i,2];
       if t<min then min:=t;
       
    end;


for i:=1 to k-2 do
    begin
         for j:=1 to k-2 do
             begin
                  //writeln(r[j,1]);
                //writeln(r[j,2]);
                if r[j,2]<>0 then
                 t:=r[j,1]/r[j,2]

                 else continue;
                  t2:=r[j+1,1]/r[j+1,2];
                 //writeln(t);
                 if t>t2 then
                    begin
                         //writeln('fff');
                         a1:=r[j,1];
                         a2:=r[j,2];
                         r[j,1]:=r[j+1,1];
                         r[j,2]:=r[j+1,2];
                         r[j+1,1]:=a1;
                         r[j+1,2]:=a2;
                    end;
             end;
    end;

for i:=1 to k-1 do writeln(r[i,1],'/',r[i,2]);

end.




