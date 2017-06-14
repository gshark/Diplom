function isSimple(a,b:integer):boolean;
var i:integer;
f:boolean;
begin
     f:=true;
    for i:=2 to (a+b+1) div 2 do
        if (a mod i = 0) and (b mod i = 0) then
        begin
           f:=false;
           break
        end;
    isSimple:=f;
end;

procedure rec(n:integer;q,p:real);
var       i,j,mini,minj:integer;
begin
    minj:=1;
    mini:=1;
    for i:=2 to n do
    begin

         for j:=1 to i do
         begin
              //writeln(p:3:3,' ',j/i,' ' ,q, ' ',isSimple(i,j) );
              if (isSimple(i,j)) and (j/i>p) and (j/i<q) and (j/i<minj/mini)
              then
              begin

                  mini:=i;
                  minj:=j;
              end;
         end;
    end;

    if minj/mini < 1 then
    begin
         writeln(minj,'/',mini);
         rec(n,q,minj/mini);
    end;
end;


var
n,q,p,i,j:integer;

begin
    readln(n,p,q);
    rec(n,1/q,1/p)
              
end.