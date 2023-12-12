uses Crt;
var a, b, h, s, y: real;
n: integer;
function f(x: real): real;
begin 
  f := 2 * power(x,3) + (0) * power(x,2) -2 * x + 7
end;

procedure gig;
begin
write('Введите первую границу интегрирования: ');
var a:=ReadInteger;
write('Введите вторую границу интегрирования: ');
var b:=ReadInteger;
write('Введите количество делений: ');
var n:=ReadInteger;
var h:=(b-a)/n;
var s:=(f(a)+f(b))/2;
var x:=a+h;
for var i:=1 to n-1 do
begin
s:=s+f(x);
x:=x+h;
s:=s*h;
end;
var p:=f(b)-f(a);
var d:=abs(p-s);
writeln('Площадь фигуры: ',p);
writeln('Погрешность: ',d);
end;
var t:integer;
begin
repeat
writeln;
textcolor(Green);
writeln('Выберите то,что вам необходимо:');
writeln('1-Функция');
writeln('2-Нахождение площади');
writeln('3-Выйти из программы');
readln(t);
case t of
1:writeln('Функция: 2 * power(x,3) + (0) * power(x,2) -2 * x + 7');
2:gig;
3:halt
end;
until t=3;
end.
