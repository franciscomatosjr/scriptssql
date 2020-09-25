-- retornar o último dia do mês
select dateadd(dd,-day(getdate()),getdate())
