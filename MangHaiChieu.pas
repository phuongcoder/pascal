(*Mang Hai Chieu*)
program MangHaiChieu;
uses crt;
var b:array[1..5, 1..7] of integer;
    d, i, j, k:integer;
begin
    clrscr;
    writeln('Nhap cac phan tu mang theo dong: ');
    for i:= 1 to 5 do
        begin
            for j:=1 to 7 do read (b[i, j]);
            writeln;
        end;
    write('Nhap vao gia tri k = '); readln(k);
    d:=0;
    writeln('DS cach phan tu mang nho hon ',k,' : ');
    for i:= 1 to 5 do
        for j:= 1 to 7 do
            if b[i, j] < k then 
                begin
                    write(b[i, j], ' ');
                    d:=d+1;
                end;
        if d = 0 then writeln('Khong co phan tu mang nao nho hon ',k);
    readln
end.