program ccrrccc;

var
  n, i, o, j, q, k: integer;
  a: array [1..26] of char;

begin
  read(n);
  for i := 1 to 26 do
    a[i] := chr(ord('a') - 1 + i);
  if n mod 2 = 0 then o := 0 else o := 1;
  for i := 1 to n do
  begin
    {for j:=1 to o do
     write(a[j]);
     if n mod 2=0 then 
    for j:=o downto 1 do
     write(a[j])
     else for j:=o-1 downto 1 do
     write(a[j]);
    writeln('');
    end;}
    q := 1;
    k := -1;
    for j := 1 to n div 2 + o do 
    begin
      if (q + i - 2 <= 0)or(q + i + 2 > 26) then k := -k;
      
      write(a[q + i - 1]);
      q := q + k;
      writeln(q)
    end;
    for j := n div 2 +0+2 to n do 
    begin
      if (q + i - 2 <= 0)or(q + i + 2 > 26) then k := -k;
      if j=(n div 2 +o+1) then k:=-k;;
      q := q + k;
      write(a[abs(q + i-1)]);
      
    end;
    writeln('');
  end;
end.

