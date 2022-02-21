program Bang_nhan;
uses crt;
var B: array[1..9,1..10] of integer;
    {B bien mang 2 chieu luu bang nhan}
    i, j:integer;
begin
    clrscr;
    for i:= 1 to 9 do
        for j:= 1 to 10 do
            B[i, j]:= i*j;
        for i:=1 to 9 do
            begin
                for j:=1 to 10 do write(B[i,j]:4);
                writeln;
            end;
    readln
end.