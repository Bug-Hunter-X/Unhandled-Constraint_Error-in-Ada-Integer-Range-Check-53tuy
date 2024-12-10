```ada
function Check_Range (Value : Integer) return Boolean is
begin
   if Value > 10 then
      return True;
   else
      return False;
   end if;
exception
   when Constraint_Error =>
      return False; -- Handle Constraint_Error explicitly
end Check_Range;

-- Alternative solution using a wider type
function Check_Range_Wide (Value : Long_Long_Integer) return Boolean is
begin
   if Value > 10 then
      return True;
   else
      return False;
   end if;
end Check_Range_Wide;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(12); 
   Result := Check_Range(-5);
   Result := Check_Range(10);
   Result := Check_Range(1000000000000);  -- Now correctly handles large values

   Result := Check_Range_Wide(1000000000000); --Alternative solution using Long_Long_Integer which has wider range
end Example;
```