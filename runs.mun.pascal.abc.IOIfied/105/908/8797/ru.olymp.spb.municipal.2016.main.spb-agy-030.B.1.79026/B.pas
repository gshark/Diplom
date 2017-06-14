program p2;
var n, p, q : integer;
    i, j, k : integer;
    a : array [1..100000000] of real;
    b : array [1..100000000] of string;
    x, y : real;
    s1,s2 : string;
    
procedure sort();
  var i, j : integer;
      x : real;
      s : string;
  begin
    for i:=1 to k do
      for j:=i+1 to k do
        begin
          if a[j]<a[i]
          then begin
                 x:=a[i];
                 s:=b[i];
                 a[i]:=a[j];
                 b[i]:=b[j];
                 a[j]:=x;
                 b[j]:=s;
               end
        end;
  end;

function anyDel(a,b:integer) : boolean;
  var i : integer;
      bol : boolean;
  begin
    bol := true;
    for i:=2 to a do
      begin
        if (a mod i = 0) and (b mod i = 0)
        then
          begin
            bol:=false;
            break;
          end;
      end;
    anyDel:=bol;
  end;

begin
readln(n, p, q);
x:=1/p;
y:=1/q;
for i:=1 to n do
  begin
    for j:=1 to i do
      begin
        if (j/i>x) and (j/i<y) and anyDel(i,j)
        then
          begin
            k:=k+1;
            a[k]:=j/i;
            Str(j,s1);
            Str(i,s2);
            b[k]:=s1+'/'+s2;
          end;
      end;
  end;

sort();
for i:=1 to k do writeln(b[i]);
End.