program Drobi;
 const R = 100*100;
var I1: array [1..R] of real;
var J1: array [1..R] of real;
var n,p,q : integer ;
var i, j, v : integer;
var z: real;
 
begin
  v := 1;
  read (n,p,q);
      for i:=1 to n-1 do
      for j:=2 to n-1 do
            if ((1/p) < (i/j)) and (i/j < 1/q) then if ( j mod i <> 0 ) then begin I1[v] := i; J1[v]:= j; inc(v) end;
            
  for j:=1 to v-1 do
  for i:=1 to v do 
    if I1[i] / J1[i] > I1[i+1] / J1[i+1] then begin z :=I1[i+1]; I1[i+1]:= I1[i];I1[i] := z ; z :=J1[i+1]; J1[i+1]:= J1[i];J1[i] := z end;
    
    for i:=1 to v-1 do writeln (I1[i], '/' ,J1[i])
  
end.