Program ProblemA;

var a: integer;
    k: integer;
    
    
begin
  readln(a); 
  repeat
    if (a mod 10 = 0) then a := a div 10;
  until a mod 10 <> 0;
  repeat
    if a mod 10 = 0 then inc(k);
    a := a div 10;
  until a = 0;
  writeln(k);
end.    