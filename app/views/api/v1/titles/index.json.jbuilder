json.array! @titles do | title |
    json.id title.id
    json.jobtitle title.jobtitle
    json.employees title.employees do | employee |
        json.id employee.id
        json.name employee.name
        json.avatar employee.avatar
        json.email employee.email
        json.location employee.location
        json.department employee.department
        
    end
end

