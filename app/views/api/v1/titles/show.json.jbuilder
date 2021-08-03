json.id @title.id
json.jobtitle @title.jobtitle
json.employees @title.employees do | employee |
    json.id employee.id
    json.name employee.name
    json.avatar employee.avatar
    json.email employee.email
    json.department employee.department_id
    json.location_id employee.location_id
end
