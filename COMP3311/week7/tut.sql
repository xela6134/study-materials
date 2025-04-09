

create assertion StudentCreditLimit check (
    not exists (
        select s.zid
        from students s
        join enrollments e on s.zid = e.zid
        join courses c on e.course_id = c.id
        group by s.zid
        having sum(c.credits) > 18 
    )
);











create or replace function salary_function()
returns trigger as $$
begin
    if NEW.salary < 0 then
        raise exception 'salary cannot be negative';
    end if;

    return NEW;
end;
$$ language plpgsql;

create trigger prevent_negative_salary
before insert or update on employees
for each row execute function salary_function();





create or replace function bonus_function()
returns trigger as $$
begin
    update employees
    set salary = salary * 1.1
    where id = NEW.id;

    return NEW;
end;
$$ language plpgsql;

create trigger salary_bonus
after insert on employees
for each row execute function bonus_function();



------------------------------------------------------

create function pk_function()
returns trigger as $$
begin
    if (new.a is null or new.b is null) then
        raise exception 'a or b is null!';
    end if;

    select * from R 
    where a = NEW.a and b = NEW.b;

    if (found) then
        raise exception 'primary key already exists for a and b';
    end if;

    return NEW;
end;
$$ language plpgsql;

create trigger primary_key_check
before insert or update on R
for each row execute function pk_function();

