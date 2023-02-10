-- select e.equipment_id id, eq.name eqna, e.size eqsi
-- 		from equipment e, equipment_type eq
-- 		where e.equipment_type_id = eq.equipment_type_id
--select e.equipment_id eid, eq.name eqname, e.size esize from equipment e, equipment_type eq
--where e.equipment_type_id=eq.equipment_type_id;
--
-- select r.rent_id rent_id, eq.eqna eqname,eq.eqsi eqsize, rr.surname,rr.name, r.date 
-- 	from rent r,renter rr, (
-- 		select e.equipment_id id, eq.name eqna, e.size eqsi
-- 		from equipment e, equipment_type eq
-- 		where e.equipment_type_id = eq.equipment_type_id) eq
-- 	where eq.id = r.equipment_id and rr.renter_id= r.renter_id 
-- 	order by r.date DESC;
select r.rent_id, sum.price 
from rent r,
    renter rr,
    equipment_type et,
    age_range ar,
    equipment e, (
	
)
WHERE r.renter_id = rr.renter_id 
AND r.age_range_id = ar.age_range_id 
AND r.equipment_id = e.equipment_id 
AND e.equipment_type_id = et.equipment_type_id 
AND a.id = r.rent_id

