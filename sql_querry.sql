select  i.Number , c.FirstName, c.LastName  from Invoices i , Clients c where c.Id=i.ClientNumber;

select  i.Number , p.Name,p.Price   from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId;

select  i.Number , COUNT(p.Name)  as ilosc_produktow_na_FV  from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId group by i.Number;

select  i.Number , sum(p.price)  as suma_produktow  from   Invoices i, InvoicePositions ip , Products p  where  ip.ProductId=p.Id and i.Id=ip.InvoiceId group by i.Number;