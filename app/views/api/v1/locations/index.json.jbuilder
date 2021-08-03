json.array! @locations do | location |
    json.id location.id
    json.state location.state
    json.employees location.employees do | employee |
        json.id employee.id
        json.name employee.name
        json.email employee.email
        json.avatar employee.avatar
        json.department employee.department
        json.title employee.title
        
    end
end
