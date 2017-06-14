program c;

var
  ris: array[1..100, 1..100] of integer;
  i, i1, n, i2, i3, i4: integer;
  work, work1: boolean;

begin
  read(n);
  for i := 1 to n do
  begin
    for i1 := 1 to n do
    begin
      if (i = i1) or (i = n - i1 + 1) then
        ris[i, i1] := 1;
    end;
  end;
  i4 := n div 2;
  if i4 * 2 <> n then
    i4 := i4 + 1;
  i2 := 1;
  work := true;
  for i := 1 to n do
  begin
    for i1 := 1 to n do
    begin
      if (i1 = i4) and (i = i4) then
      begin
      work:=true;
      work1:=false;
        if work = true then
        begin
          if work1 = false then
            i2 := i2 + 1
          else if work1 = true then
            i2 := i2 - 1;
          ris[i, i1] := i2;
        end; 
        if ris[i, i1] = 1   then
        begin
          work := true;
          i2:=1;
          i3 := i3 + 1;
        end;
      
      end
      else
      begin
        
        //7     if (i1=1) and (ris[i,i1]<>1) then
        //     work:=true;
        if i3 >= 2 then
        begin
          i3 := 0;
          i2 := 1;
          work1 := false;
        end;
        if (i1 - 1 = i4)  then
          work1 := true;
        if (work = true) and (ris[i, i1] <> 1) then
        begin
          if work1 = false then
            i2 := i2 + 1
          else if work1 = true then
            i2 := i2 - 1;
          ris[i, i1] := i2;
        end;
        if (ris[i, i1] = 1) and (work = true) and (i3 < 2) then
          work := false;     
        if (ris[i, i1] = 1) and (work = false) and (i1 <> i4) then
        begin
          work := true;
          i3 := i3 + 1;
        end;
        
        
      end;
      
      //
    end;
    i3 := 0;
    i2 := 1;
    work := false;
    work1 := false;
  end;
  
  for i := 1 to n do
  begin
    for i1 := 1 to n do
    begin
      if ris[i, i1] = 1 then
        write('a')
      else if ris[i, i1] = 2 then
        write('b')
      else if ris[i, i1] = 3 then
        write('c')
      else if ris[i, i1] = 4 then
        write('d');
    end;
    writeln;
  end;
end.