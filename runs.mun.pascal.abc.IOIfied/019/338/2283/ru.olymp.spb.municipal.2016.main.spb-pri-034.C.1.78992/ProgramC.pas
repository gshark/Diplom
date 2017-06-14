program pr2;
var
  vara,varBB:integer;
  arr: array [,] of char; 
  chNOW:char;
  chNEXT:char;

procedure print();
var i,j:integer;
begin
  for i:=0 to vara-1 do
  begin
    for j:=0 to vara-1 do
    begin
      write (arr[i,j]);write (' ');
    end;
  writeln;
  end;
end;

procedure add_start();
var i,j:integer;
begin
  for i:=0 to vara-1 do
    for j:=0 to vara-1 do
    begin
      arr[i,j]:='.';
    end;
  for i:=0 to vara-1 do
  begin
    arr[i,i]:='a';
  end;
  for i:=0 to vara-1 do
  begin
    arr[i,(vara-1)-i]:='a';
  end;
end;

procedure add();
var i,j:integer;
begin
  for i:=0 to vara-1 do
    for j:=0 to vara-1 do
    begin
      if (arr[i,j]=chNOW)then
      begin
        if (not(i=0))then
          if (arr[i-1,j]='.')then
          begin
            arr[i-1,j]:=chNEXT;
          end;
        if (i+1=vara+1)then
          if (not(arr[i+1,j]='.'))then
          begin
            arr[i+1,j]:=chNEXT;
          end;
        if (not(j=0))then
          if (arr[i,j-1]='.')then
          begin
            arr[i,j-1]:=chNEXT;
          end;
        if (not(j+1=vara+1))then
          if (arr[i,j+1]='.')then
          begin
            arr[i,j+1]:=chNEXT;
          end;
      end;
    end;
end;

procedure change_char();
var ch111:integer;
begin
 chNOW:=chNEXT;
 if (not(chNOW='z'))then
  Inc(chNEXT)
 else
  chNEXT:='a';
end;

begin
readln (vara);
  arr := new char[vara+1,vara+1];
  add_start();
  chNOW:='a';
  chNEXT:='b';
  add();
  for varBB:=2 to vara+1 do 
  begin
    change_char();
    add();
  end;
  print();
  //writeln (arr);
end.

