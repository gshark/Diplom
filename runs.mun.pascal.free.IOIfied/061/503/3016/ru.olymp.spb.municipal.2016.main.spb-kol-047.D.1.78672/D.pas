program tree_pifagor;

uses
  crt, graphABC;
var
  x,y,v, i:integer;
  alfa, alfa1, alfa2, m: real;
  
procedure Pifagor(x0, y0, a, L: real; N: integer; a1,a2:real);
{ x0, y0 - координаты начала следующей линии
  a - угол наклона ветки дерева в радианах
  L - длина первой ветки, далее длина будет уменьшаться на коэфф. k
  N - количество разветвлений  }
var
  x1, y1, k: real; { локальные переменные }
  
begin
  SetPenWidth(n); { установка толщины линий карандаша}
  k := 0.65;    { коэффициент уменьшения длины линии }
  if N > 0 then 
  begin
      x1 := x0 + L * cos(a);   { расчет X-координаты конца линии}
      y1 := y0 - L * sin(a);   { расчет Y-координаты конца линии}
    Line(round(x0), round(y0), round(x1), round(y1));  { рисуем первую линию}
    Pifagor(x1, y1, a + a1, L * k, N - 1, a1,a2);  { рисуем линию слева }
    Pifagor(x1, y1, a - a2, L * k, N - 1, a1,a2);  { рисуем линию справа }
  end;
end;

begin
  x:=350;   y:=450;  { координаты начала линии        }
  alfa:=pi/2;        { угол наклона линии 0..Pi       }
  m:=130;            { начальная длина линии  50..150 }
  v:= 7;             { количество ветвлений  1..20    }
  repeat
   for i:=0 to 5 do
  begin
  LockDrawing;
  Window.Clear;
  alfa1:=pi/(i+5);
  alfa2:=pi/(10-i);
  Pifagor(x, y, alfa, m, v, alfa1, alfa2); { вызов процедуры рисования дерева }
    Redraw;
    Sleep(80);
  end;
    for i:=5 downto 0 do
  begin
  LockDrawing;
  Window.Clear;
  alfa1:=pi/(i+5);
  alfa2:=pi/(10-i);
  Pifagor(x, y, alfa, m, v, alfa1, alfa2); { вызов процедуры рисования дерева }
    Redraw;
    Sleep(80);
  end;
  until false;
  {Writeln ('Работу выполнил: Иванов Иван Иванович'); }
end.
