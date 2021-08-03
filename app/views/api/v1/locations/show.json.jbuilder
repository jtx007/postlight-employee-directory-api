json.id @location.id
json.state @location.state
json.employees @location.employees do | employee |
    json.id employee.id
    json.name employee.name
    json.avatar employee.avatar
    json.email employee.email
    json.department_id employee.department
    json.title_id employee.title
end