delimiter //
create trigger tr_ins77_Borrower
before insert
on table1
for each row
begin
insert into table2 values(new.rollno,new.name,new.nameofbook);
end
//

delimiter //
create trigger tr_del_Borrower
before delete
on table1
for each row
begin
delete from table2 where rollno=old.rollno;
end
//


delimiter //
create trigger tr_up1_Borrower
before update
on table1
for each row
begin
update table2 set rollno=new.rollno where rollno=old.rollno;
end
