(*Tim so lon nhat cua day so nguyen*)
{Copyright by Phuong}
program TimMax;
uses crt;
const Nmax = 250;
type ArrInt = array[1..Nmax] of integer;
var N, i, Max, csmax:integer;
    A:ArrInt;
begin
    clrscr;
    write('Nhap so luong phan tu cua day so, N = ');
    readln(N);
    for i:= 1 to N do
        begin
            write('Phan tu thu ',i,' = ');
            readln(A[i]);
        end;
    Max:= A[1]; csmax:=1;
    for i:= 2 to N do
        if A[i] > Max then
            begin
                Max:= A[i];
                csmax:= i;
            end;
        writeln('Gia tri cua phan tu Max: ',Max);
        writeln('Chi so cua phan tu Max: ',csmax);
    readln
end.
