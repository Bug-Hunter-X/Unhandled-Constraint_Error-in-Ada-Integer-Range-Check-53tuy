```ada
function Check_Range (Value : Integer) return Boolean is
begin
   if Value > 10 then
      return True;
   else
      return False;
end if;
exception
   when others =>
      return False; -- Handle potential exceptions
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(12);  --Correct
   Result := Check_Range(-5); --Correct
   Result := Check_Range(10); --Correct
   Result := Check_Range(1000000000000); -- This will raise Constraint_Error if Integer is limited
end Example;
```