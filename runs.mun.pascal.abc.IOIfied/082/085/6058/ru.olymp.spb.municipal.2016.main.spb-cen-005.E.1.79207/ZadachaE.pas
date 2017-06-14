Program ZadachaE;
  var r,c,q,i,ii,iii,qq,z,s,iss,iiss: integer;
  t: array of array of integer;
  m: array of integer;
begin
  readln(r,c,q);
  SetLength(m,q);
  for i := 1 to q do read(m[i-1]);
  SetLength(t,r);
  for i := 0 to (r-1) do SetLength(t[i], c);
  qq := 1;
  
  for ii := 0 to (c-1) do begin
    for i := 0 to (r-1) do begin
      if (ii - i) >= 0 then begin
        t[i][ii-i] := qq;
        qq := qq + 1;
      end;
    end;
  end;

  z := (c-1);  
  i := 1;
  
  repeat
    ii := i;
    s := 0;
    repeat
      t[ii][z-s] := qq;
      s := s + 1;
      ii := ii + 1;
      qq := qq + 1;
    until ii = r;
    i := i + 1;
  until i = r;
  for i := 0 to (r-1) do writeln(t[i]);
  
  for iii := 0 to (q-1) do begin
    for i := 0 to (r-1) do begin
      for ii := 0 to (c-1) do begin
        if t[i][ii] = m[iii] then begin
          iss := i + 1;
          iiss := ii + 1;
          writeln(iss + ' ' + iiss);
        end;
      end;
    end;
  end;
  
end.