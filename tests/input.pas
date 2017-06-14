{$r+,q+}
const
  maxn = 20;
  maxr = 1000;

var
  i, j, best, n, k: longint;
  a: array [1..maxn] of longint;
  u: array [1..maxn] of boolean;
  ans: longint;

function eval(n: longint): longint;
var
  i, v: longint;
begin
  v := 0;
  for i := 1 to n - 1 do begin
    v := v + a[i] * a[i + 1];
  end;
  eval := v;
end;

procedure generate(i, n: longint);
var
  v, j: longint;
begin
  if i > n then begin
    v := eval(n);
    if v mod k = 0 then begin
      inc(ans);
    end;
  end;

  for j := 1 to n do begin
    if not u[j] then begin
      u[j] := true;
      a[i] := j;
      generate(i + 1, n);
      u[j] := false;
    end;
  end;
end;

begin
  readln(n, k);
  generate(1, n);
  writeln(ans);
end.