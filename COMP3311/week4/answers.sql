-- Q12
select  distinct s.sname
from    Suppliers s
join    Catalog c on s.sid = c.sid
join    Parts p on c.pid = p.pid
where p.colour = 'red';

-- Q13
select distinct c.sid
from Catalog c
join Parts p on c.pid = p.pid
where p.colour in ('red', 'green');

-- Q14
select  s.sid
from    Suppliers s
where   s.address='221 Packer Street'
or S.sid in (
    select c.sid
    from   Parts p
    join Catalog c on p.pid = c.pid
    where  p.colour='red'
);

-- Q15
-- If the subquery finds a matching green part (returns any row), 

select  distinct c.sid
from    Parts p
join    Catalog c on p.pid = c.pid
join    Catalog c2 on c.sid = c2.sid
join    Parts p2 on c2.pid = p2.pid
where   p.colour = 'red' and p2.colour = 'green';

-- Q20
select  c1.sid, c2.sid
from    Catalog c1, Catalog c2
where   c1.pid = c2.pid and c1.sid != C2.sid and c1.cost > c2.cost

-- Q21
select  c.pid
from    Catalog c
where exists (
    select c1.sid
    from   Catalog c1
    where  c1.pid = c.pid and c1.sid != c.sid
)

-- Q22
select c.pid
from Catalog c
join Suppliers s on c.sid = s.sid
where s.sname = 'Yosemite Sham'
and c.cost = (
    select max(c2.cost)
    from Catalog c2
    join Suppliers s2 ON c2.sid = s2.sid
    where s2.sname = 'Yosemite Sham'
);

