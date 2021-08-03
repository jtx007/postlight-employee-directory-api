json.id @department.id
json.name @department.name
json.employees @department.employees do | employee |
    json.id employee.id
    json.name employee.name
    json.avatar employee.avatar
    json.email employee.email
    json.location employee.location
    json.title employee.title
end