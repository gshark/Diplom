var n,p,q: integer;
var i,j: integer;  
var sok: integer;  
var nes: boolean;  
var n1: integer;   
var maxd: integer; 
var max: real;
type
  Drob = record
  i:integer; 
  j:integer; 
  end;
var drob1: array [1..4] of Drob;
var temp: Drob;
Begin
  n1:=0;
  readln(n,p,q);
          max:=0;
  for i:=1 to n do
      for j := 1 to n do
        if (i/j < 1) and (1/p < i/j) and (i/j < 1/q) then
          begin
            nes := true;
            for sok := j downto 2 do
              if (j mod sok = 0) and (i mod sok = 0) then
                nes:= false;
            if (nes) then
              begin
              inc(n1);
              drob1[n1].i := i;
              drob1[n1].j := j;
              end;
          end;
  for i:=0 to n1-1 do
  begin
    for j:=1 to n1-i do
      begin
        if ((drob1[j].i / drob1[j].j) > max) then
          begin
            max := (drob1[j].i / drob1[j].j);
            maxd:= j;
          end;
      end;
    temp := drob1[j];
    drob1[j]:=drob1[maxd];
    drob1[maxd]:=temp;
   max:=0;
  end;
  for i:=1 to n1 do
  writeln(drob1[i].i,'/',drob1[i].j);
end.
