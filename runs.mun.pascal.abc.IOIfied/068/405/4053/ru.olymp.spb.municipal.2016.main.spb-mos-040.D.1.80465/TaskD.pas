var
used: array [1..10] of boolean;
n, k, counter: longint;
str: array of longint;
function a(len: longint): string;
var
i, flag, j, s: longint;
begin
  for i:= 1 to n do begin
    flag := 0;
    if used[i] = False then begin
      used[i] := True;
      flag := 1;
      SetLength(str, len);
      str[High(str)] := i;
      if len = n then begin
        s := 0;
        for j:= 0 to length(str) - 2 do begin
          s:= s + str[j]*str[j+1];
        end;
        if s mod k = 0 then begin
          counter += 1
        end;

      end else begin
        a(len + 1)
      end;
    end;
    SetLength(str, len - 1);
    if flag = 1 then begin
      Used[i] := False;
    end;
  end;
end;
begin
  read(n, k);
  a(1);
  write(counter);
end.