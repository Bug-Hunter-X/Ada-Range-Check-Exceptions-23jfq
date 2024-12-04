```ada
function Check_Range(Num : Integer) return Boolean is
begin
   return Num > 10; -- Removed exception handling
exception
   when others =>
      Put_Line("Unexpected error in Check_Range"); -- Log and handle the error appropriately
      return False; -- Return false or raise the exception depending on requirements
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Input_Number : Integer;
begin
   Put_Line("Enter an integer:");
   Get(Input_Number);

   if Check_Range(Input_Number) then
      Put_Line("Number is greater than 10");
   else
      Put_Line("Number is not greater than 10");
   end if;
end Main;
```