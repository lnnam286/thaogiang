var
  N, i: integer;
  S: array[1..1500] of integer;
  A, max: real;
begin
  write('Nhap so luong hoc sinh: ');
  readln(N);
  
  // Nhập điểm số của từng học sinh
  if i>=0 then
  begin
    for i := 1 to N do
    begin
      write('Nhap diem cua hoc sinh thu ', i, ': ');
      readln(S[i]);
      end;
  end;

  // Tính điểm trung bình của toàn trường
  A := 0;
  for i := 1 to N do
    A := A + S[i];
  A := A / N;
  writeln('Diem trung binh cua toan truong: ', A:0:2);

  // Tìm học sinh có điểm số cao nhất
  max:= 0;
  for i := 1 to N do
    if S[i] >max then
      max:= S[i];

  // Hiển thị chỉ số của các học sinh có điểm số cao nhất
  write('Chi so cac hoc sinh co diem so cao nhat: ');
  for i := 1 to N do
    if S[i] = max then
      write(i, ' ');
end.