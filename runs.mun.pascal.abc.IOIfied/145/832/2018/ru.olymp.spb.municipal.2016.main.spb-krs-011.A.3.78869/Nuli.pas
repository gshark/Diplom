program nuli;
var k:longint; a,s:integer;
begin
  s:=0;
  a:=0;
  readln (k);
   while (k > 0) and (s = 0) do //Отсекаем нули в конце
    if k mod 10 = 0
     then k:=k div 10
     else begin s:=1; k:=k div 10 end;
      if s=1 //Считаем нули
       then while k > 0 do
       if k mod 10 = 0
             then begin a:=a+1; k:=k div 10 end
             else k:=k div 10;
             writeln (a); //Выводим ответ
             end.
            
           