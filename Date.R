### Dates

"02Jun1980" -> dt
class(dt)
as.Date(dt, format = "%d%B%Y") -> dt1
dt1

class(dt1)

"02-06-1980" -> dt2
class(dt2)

as.Date(dt2, format = "%d-%m-%Y") -> dt3
dt3
class(dt3)

# POSIXlt format

as.POSIXlt("1980-06-02") -> a # as.POSIXlt("YYYY-mm-dd")
a
class(a)

# Why work with POSIXlt date format ?

as.POSIXlt("1980-05-02") -> b
a-b

unlist(a) -> a1
a1

a1[5]

a$mon
a$mday

unclass(a) ->a2
a2

a2$year
