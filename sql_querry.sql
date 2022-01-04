select  i.Number , c.FirstName, c.LastName  from Invoices i , Clients c where c.Id=i.ClientNumber;

select  i.Number , p.Name,p.Price   from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId;

select  i.Number , COUNT(p.Name)  as ilosc_produktow_na_FV  from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId group by i.Number;

select  i.Number , sum(p.price)  as suma_produktow  from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId group by i.Number;


select  i.Number , c.FirstName , c.LastName  
from Invoices i
left join Clients c on c.Id =i.ClientNumber

select i.Number, p.Name, p.Price  from InvoicePositions ip 
left join Invoices i on i.Id=ip.InvoiceId
left join Products p on p.Id=ip.ProductId


select i.Number, count(p.Name) as [ilosc produktow] , ip. from InvoicePositions ip 
left join Invoices i on i.Id=ip.InvoiceId
left join Products p on p.Id=ip.ProductId
group by i.Number;

select i.Number , sum (p.price * ip.quantity) as [cena calkowita]  from InvoicePositions ip 
left join Invoices i on i.Id=ip.InvoiceId
left join Products p on p.Id=ip.ProductId
group by i.Number