
json.array! @employees do | employee |
    json.id employee.id
    json.name employee.name
    json.avatar employee.avatar
    json.email employee.email
    json.location employee.location
    json.title employee.title
    json.department employee.department
    json.pagy @pagy
end

