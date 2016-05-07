--
-- Import script when "hibernate.hbm2ddl.auto" is set to "create"
--
delete from department;
delete from category;
delete from role;
delete from users;
delete from project;
delete from likes;


-- Departments
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Business');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Education');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Healthcare');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'IT');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'MAD');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Media & Tourism');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Music');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Social Work');
insert into department (last_update, last_updated_by, status, name) values('2016-01-01', 'Team1', 'A', 'Tech');

-- Categories
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Big Data');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Tutoring');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Health');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'IT');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Media');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Technology');
insert into category (last_update, last_updated_by, status, description) values('2016-01-01', 'Team1', 'A', 'Financial');

-- Roles
insert into role (name) values('Docent');
insert into role (name) values('Student');

-- Users
insert into users (firstname, lastname, username, password, department_id, role_id) values('De', 'Nie', 'dennie', 'pwpwpw', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Arjen', 'Schuurman', 'arjen.schuurman@student.pxl.be', 'pxlpxl', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Bart', 'Hunerbein', 'bart.hunerbein@student.pxl.be', 'pxlpxl', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Dennie', 'Grondelaers', 'dennie.grondelaers@student.pxl.be', 'pxlpxl', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Jesse', 'Vranken', 'jesse.vranken@student.pxl.be', 'pxlpxl', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Niek', 'Vandael', 'niek.vandael@student.pxl.be', 'pxlpxl', 4, 2);
insert into users (firstname, lastname, username, password, department_id, role_id) values('Tim', 'Dupont', 'tim.dupont@pxl.be', 'pxlpxl', 4, 1);

-- Projects
insert into project (last_update, last_updated_by, status, begin_date, end_date, creation_date, is_public, is_backed, is_verified, project_status, description, short_description, title, category_id, user_id) values('2016-04-23', 'Team1', 'A', '2016-05-01', '2016-04-23', '2016-06-01', true, true, true, 1, 'Big Data wordt wel eens de olie van de 21e eeuw genoemd, maar om uit te groeien tot nieuwe rijke datasjeiks moeten we net als bij olie raffineren. We moeten Big Data omzetten in iets kostbaars. Jackie Janssen neemt ons mee in deze nieuwe, wondere wereld van Big Data', 'Big Data wordt wel eens de olie van de 21e eeuw genoemd, maar om uit te groeien tot nieuwe rijke datasjeiks moeten we net als bij olie raffineren. We moeten Big Data omzetten in iets kostbaars.', 'IT@Breakfast - 18 mei: voor alle 2de jaars - Topic: Big Data', 1, 1);
insert into project (last_update, last_updated_by, status, begin_date, end_date, creation_date, is_public, is_backed, is_verified, project_status, description, short_description, title, category_id, user_id) values('2016-04-23', 'Team1', 'A', '2016-05-01', '2016-04-23', '2016-06-01', true, false, true, 1, 'Tijdens PXL Breekt uit, op woensdag 20 april, willen we samen met studenten Journalistiek op zoek gaan naar mogelijke verhalen in Big Data. De bedoeling is dat een aantal IT-studenten één of meerdere datasets met ruwe data vertalen naar een gestructureerd datarapport. Daarna gaan de studenten Journalistiek met dit rapport aan de slag om een verhaal te schrijven. Deze opdracht vindt plaats in een redactielokaal van Het Belang van Limburg van 08.30 u. tot 13.00 u. (schatting). We zijn op zoek naar een 3-tal tweedejaarsstudenten van de IT management track (of studenten die niet deelnemen aan het AppDev/SNB project). Geïnteresseerde studenten mogen zich kandidaat stellen door een e-mail te sturen naar Tristan.Fransen@pxl.be. Geselecteerde kandidaten worden z.s.m. op de hoogte gebracht. Collega Steven Palmaers kondigde eerder ook reeds een opdracht aan voor IT management-studenten om projectvoorstellen van studenten Journalistiek bij te wonen en te evalueren tijdens PXL Breekt uit op woensdag 20 april van 09.00 u. tot 13.00 u. Hier zoeken we nog 4 andere studenten die willen deelnemen.Uiteraard vallen hier I-Talent uren mee te verdienen, afhankelijk van de duur van de opdracht.', 'Tijdens PXL Breekt uit, op woensdag 20 april, willen we samen met studenten Journalistiek op zoek gaan naar mogelijke verhalen in Big Data.', 'PXL Breekt Uit: opdracht samen met studenten Journalistiek.', 1, 2);
insert into project (last_update, last_updated_by, status, begin_date, end_date, creation_date, is_public, is_backed, is_verified, project_status, description, short_description, title, category_id, user_id) values('2016-04-23', 'Team1', 'A', '2016-05-01', '2016-04-23', '2016-06-01', false, false, true, 1, 'Volgende zaterdag (16 april 2016) is er opnieuw een CoderDojo Hasselt event. Ditmaal opnieuw op de PXL (Campus Vildersstraat), van 10u tot 13u (in de cafetaria). Jullie zijn liefst rond 9.30u ter plaatse.Hiermee kunnen jullie 4u voor I-Talent verdienen. Bedoeling is dat jullie kinderen leren programmeren, aan de hand van Scratch, App Inventor, Robomind / Lego Mindstorms, HTML en Minecraft.Wie wil deze sessie mee begeleiden?Als jullie mee willen komen helpen, geef dan even jullie naam in op https://docs.google.com/document/d/1Mon4xcGwK7e0MRkxHEPTDsFoimtRl0DssgT5k_YeJlE/editGraag ook een mailtje naar steven.palmaers@pxl.be', 'Volgende zaterdag (16 april 2016) is er opnieuw een CoderDojo Hasselt event.', 'CoderDojo Hasselt - 16 april 2016', 2, 3);

-- Likes
insert into likes(last_update, last_updated_by, status, user_id, project_id) values('2016-01-01', 'Team1', 'A', 1, 1);
insert into likes(last_update, last_updated_by, status, user_id, project_id) values('2016-01-01', 'Team1', 'A', 1, 2);
insert into likes(last_update, last_updated_by, status, user_id, project_id) values('2016-01-01', 'Team1', 'A', 2, 1);

-- Pictures
insert into picture(last_update, last_updated_by, status, project_id, description, bytes) values('2016-01-01', 'Team1', 'A', 1, "Toppertje", '/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQSEhQUEhQUFBUUFBQUFBcVFBUUFRUUFxQWFhcUFRQYHCggGBolGxYUITIhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGiwfHCYsLCwsLSwsLCwsLCwsLSwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAECBAUGBwj/xABJEAABAwIDAwkEBggEBAcAAAABAAIRAxIEITEFQVEGEyJSYXGBkaEyQrHRFBZTYpLBByMzcnOi4fAVstLxQ2PC4jRUZIKTo7P/xAAaAQACAwEBAAAAAAAAAAAAAAAAAQIDBAUG/8QAJxEAAgICAgIBBAIDAAAAAAAAAAECEQMSITEEUUETIjJhBfAjQoH/2gAMAwEAAhEDEQA/AN+1MQiQlC7hzARCUIhalCBgyE0IhCUIAHCUIkJoRYwcJQiWprUWBCE8KVqUJDIQlCnCe1AEITwpWp4SGRDU9qmAnhAEAE4ClantSAjCkApBqeEARATwpQpBqQEQE4CkApBqLGRATgKUKQCQEISRLUkCKkJQpwntVhAFCRCJamtRYA7UoRLUoSAFalCJCUIGDhNCLamhAA4T2qdqeEDBwlaiQntRYA4Twp2p4SsZCE9qnanhIAYClCmGpw1FjoHapBqnanDUrAgApQpgJ7UARAThqnanhICNqcBTDVINSsAdqSLakiwKdqVqJalarLKwUJWosJoSsYK1K1FtStRYArU1qLalaiwBWpWotqUIsYK1CxVdlNpc9wa0byYCskLyDlbtw4ms4gnmmktpjdAyL+8/BVZcqgrLcWJ5HR21flthWutBc7tAy9StvA45tUAtnPPNeIYdkuC9d5JU/wBW0cBC5Wf+SnjadcHX8f8AjceSLts3rU9qk5lrgDo6Y7xqPz81K1dPDmjlgpxOTmwvFNwZC1PapgJ7VbZUQhPapwntSsZANThqnantRYyAanDVMNUg1KwIQpBqnanDUWBG1PapgJwErAhakiWp0rCinalai2pWqyyugNqUI1qa1KxgrU1qNamtRYArUrUW1K1FgCtStRbUrUWM5nlhtdlGhUYHtFVzIDZ6VrjaXeAleNYh5yhsDXVdly+afp9SfsmEfhjL1XFYgzrOS5ufJtKvR0sOPWNr5NDYtpf0twmO1et8kqgIy3Ejy3rx/k7gRXxFKm4kNc+CQYPeCugwlMtxQY04hoaAJYXlxIAuMZ6ulcvysalxZ1/FnJQ67PYNp581G6oPItcPzStWXhcU6+lSJe8G501GWuAAMG6ACMwOOYWzauj/ABSccP8A05H8kv8AKl+gdqe1EDU9q6dnOB2pw1EAThqVjB2p4RA1PaiwoGGpwEQNUg1KwB2qQaphqlalYwdqkGqYanDUWBCEkS1OlYFQNStRbUrVLYgBtStRrU1qNgoFamtRrUrUbDoDCUI1qViWwUBtShGtStRsOjy/9KWDDKrKwOdRpaWxpZGYPbPovPKx7F6t+lzDfqaL97ajmeDmkz/IPNeT5EwVz8/5s6nju8aNzkbQc7EMLQARJbdIDi3cTwmF6js7ZsVXuLiwlwdHRLWuI6UEjQnuXn/IHDXVBD3Nc2SJAc0g6i0r0jC1HS6+3N8Nt0LRvz+C4vlze/B3MEKxlplAmtvcQGuL9AACYptAGmpWnanw7Oj6olq7ngYnjxK+2ed87MsmSl0uAVqlaiWpw1bbMVAw1PaiBqe1FjoGGp7UQNT2pWFA4ThqIGqQao7BQINUg1EDVINRsOgQanDUUNT2o2HQK1JGtTJbBRVtStRg1KEbEKA2pWotqVqNh0CtTWo1qVqNgoDalajWpiN+5LYdA7VXx2Kp0abqlVwYxolzjoP69ixducusFhZa6rzj+pR/WOngSOi3xK8p5ccqK20CXMa5uHpnJgzgke3UI3+g8VGWVRLIYnJmxy+5X0MaymzDlzmsc5zi5paCYAEA5nUrg6gzlDwQyVxjJWPJK5WdLFjqKSO05E7S6IZAJnhnC9E2bs8vIJya3zJ/ILn+QmCDaDDbDiM8oK6DDbcazFfRnQAWNLT98zke8QuXiUJ+R93R0c8skMGse6N2xPaiNgiQQe7NStXoVI81QK1Pai2p7UbBQK1Pai2pWpbDoHantRA1SDUtgoEGpw1FDU4alsGoMNT2otqcNS2HqCtUrUS1OGpbD1BWJ0WE6Nw1KMJQpJKO4akYShSSRuGpGFQ2xtajhaZqV3hjdBvLj1Wt1JWiSvAf0g8oTjMU4g/qqcspDcQNX95ie6Ebko47Oh2/+lh5luEphg+0qC53eGaDxlcLtflLisRPPV6jh1Ztb+FsBZbtVYw+EL7jMQxzh960SQPCVFz9lyxr4KYdHiup5E40NvbE3ZkESHZQGx255rnaeBc8SyHRq2Yd5FKypTOYcw9xCqyJTVWXY3o7o3tpbLa145gEteXlrcjFriC1pnMCP91qbH5PCpRvIIcHEHdp2LmaW0aoDRra4uAI3kyYPaV0dXle6rQNKAx4MvLTFzeEajPXwWXJDJSSN+DLjVuR2eE21Sw1KXuAsEBozc48AFwFba1SrXfWdLHPeHsz0aAA2O6Fk3yYGf5rpOUGFYynhpluIFBodByjO2d4dChDEsb/AGyeTM58o3+TW3WMrkNquabecrU4dzYykuaRk3MgkHwK6w8tWte1jqZNzbhBAdHG3gd2mi5Xk5sFuCwVatWbL6jCXNOtuobPEnMrP5F4F2IqV69SSYdmes7h3DJSWVxuSfCKJYozpSXJ7NTMgHiAVOFzey9oOZ0dQ2AQe4E5+viujw9YPEjy3hacXlRmv2Ysviyxu/glantUgpQrfqFGhG1INUgFKEtw0I2pwFJOEtw1IhqeE6eEtx6DQnATpwjcNRoSUkktw1Mq9Pes36Ql9ITJ6mleles76Qn+kpchqH2rUijVOkU3/wCUr5nquyB4yveOWW0ubwWIcDBNMsHe/oj4rwfFZWqUSSVAArWExVj2O3NgHhb7w9Sqk7k6bQJmnSwhFUhk23GHfdncuiODeGy2KjY0OfgFjYTatNtNjYNwBBMZa+uS29jOLpNN4c0nThHYVlyuXZsxKPQbZdCk4tbEOZla7KO7isjl5s9tGu2rTFvOgucN3ODJxjtyPiV2VbAsqQXCDxGRHaCuX5fvIpUmvkuaXQ7cWxmD26KrDO8iLcsKxsr8ltmtaxuJr5Ui98De5tOJAH3nEtj7pXVcntkuxdd2MxIhkyxp3x7OXAZI3+Dtb9Hp1QCyjh6L2NGji4GS7tkHL5rcGJuAAyA3aAKrLl5dFmLGmkA5TvdVp82z2qjgAPugySexaeytntoUW02DQZnid5T4TDibjr8ArbiGgk6AZrM5cUi/XmylXFsnxPaY+QCLhdrCmCXPawAZl0Rx3+C53lZt11Itp0Wc5VeJA91mcS7x3dma4fHW0rX4x7sRUIllIOimAMgXEZHMEZcFfhxN0+inLkSVHrew+WLsRVcBRmiNK7XQwa5ODok/uzqusD14hyT2tUZNWo8hlSRSw1NvtEe/b7oERO/NdjheWQY5rHubJbNpNzm5xEMBM8B38Fp3alRkeFNWjv7k9ywtk8oaOIuFN8lkBw4E9vgtMVlLayp46LdylKp88kcSBvCLYtC7KeVTFZSFZFsNC3clcqvPJxVCVsWpZuSVfnEkWw1PIzyqq8GpfWqrwaufsb1m/jb809g6zfxt+a7WsDn3M3vrZV+6o/Wyp93yWFaOs38bfmlA4t/G35o1gG0iXKzlA+tSFN0QXgmBHs6DzI8lyGI3LodqUQ6m7NuWYhzT6SuaqHILLlVS4NGN3HkrO1UKMyZ4qdYJqAKiS+Q8Lb5OYi0wsQq5ss1C8CkCXekbyeAVWRXGi7G6kmem4OrMbydFyXL/ABLXVGUQZe0w+PZbdHRjitXZePeBzdK2tiDNzwP1dIHt94hZm2djsZXwtKS+tUqc5VdxE3ER4OWHHFRnybsknKHB6BjqQuDhuYGGOyDPqU2HaZ4hVqLyXZmGtb8SREeCnh8YajraImNXHJo7zvWVpmlUjosMdyxcdtVr6zmAgUcM01a7t0tEhk9hz8EDlJtf6JQAabq1WWsP+Z8bgN3aQuVGKDKf0Zjg64B+IdI6T5kMDt4GU8c1bg8dzZTnzKBk7S5RioHvFNzbpkEEB5J9pz5yhsZAhYO1seKtmvQbbBjITMZa6ldkW5RkcuIzWZitgUn5gWT1XCPI6LsLxox6OS/JlLs52htmo1pDDaCA0x7RaN06gTwUBj6jnGHQSIJGWWkA+i1qvJUQObfnnN8R4Qs2ps19Ew+JOYtMiEpY1HkccjlwbPJ3alWlUYGVA0DrODW92Yhem47amIDQ5ocG2y7IEDtB4LynZTW840FoPGQD8V63yf5ttM2ZCwuNPdEatadAdMslmyT0kmkao43ODsyfrLW649EvrDV6w8gs00nfZO8lJtF32bvJdLWHo5jlL2abeUdXc8ein9ZK3X+CzG0D9m7yUuYP2b/wlGkPQby9ml9Yq3WHkFIcoq3W9As8YY/Zv/AUvo56j/wO+SNIeg3kaH1jrdb4J1nfRT9m/wDC75J0vpw9D3keeyke5bPMt6jfABEZhWxmweQCh9Fkvrr0YCgQugOCZ1R5fmmdgWb2t9U/osX1kc885d+Sz79QdR6haW1KzMhSjLXXXxWS+TnlPEKprktT4E92RT0G5DjCBWMZqyw5CdEmNEgT2K/shtzix1XmmO9s8QPdCoqwysPeY0+bT6KEuUTi6dnoWy8bSptFPDgRwBFzjxcVU2hRjF4aqfavLXuHsslrgxuepk6rjqeIY0hzGua5pkZyPVPj9rPeGmTc1zXEzJc5pls8AOAyWdYHtaNL8hNUz0Lb+NY6sQSKNN8F0En2RBI7zuHFVMVyxZSbZhmQ0audld4LjsTi3VDLiSe3hwVcA1HBjQTugCSTwATj40UvuIvyZdRLWI2hUrvNSq4uJyE7gNABuCzsc+SB4rc2rsGth6bXVQ1lxgNuBfpraNyns3YDKtF1Z7iIq80ACNzA4kyPvBasbj8GbJsvyObaFKOxdQOTdPc53m35JfVqn13/AMp/JXasp3RzFo4BTpDMQuk+rTOu7yCxcY0UXwwk26kgajdHBQmtUWY6kzX5ObOL6kyW2CZjfwg7tV2e06DfoNR+dzCS2Jyl1jo+6QSuS2DtR1LD16z+m55axn7zj8InLsXZ0MSyqRh3A3VcKXOG4B13rOa5OWT3v9naxxX0ml6PNaj0JxWwdgnfUH4T80v8AP2jfwn5rrqDOI8kTEKiXLQ2ns00Wh1wdJiIIUNmbMdWBIIaAYznPKdUULZdlG88Slzh4nzW19WanXZ6/JI8mn9dnr8lKmR2Rjc6eJ8yktj6sVetT8/6JIpi2Qv8Z/5TPAv+aQ21/wAsfjPyXWcqdhtpkVqTpoVM2ECQ0nO2eHBc4cONSQfBOEnJWmKVRdNFf/GR9n/P/wBqQ2wD/wAM5/fH+hFdhW9nkEJ+FaM4b2yFJqXsjcPRgY+pJJgSdY3dioVXditV2gkmIlV38FnNBXc6RCu0xlmnwbQ1s8SnZ8UmOJGzgkCpFJIkMCo1RJHePipKDzBE8R8UyJp1MI+5rGtLnOAItk5HuXR7FqMwDHVDa/EP6LB7QpDe4kbzw7Fk4zadSoQG9BpaGw3LogAZnfoEFrfTRVSTkqfRbFqLtdksbi31qgdUcXOJ1PwA3Ba+yNpUm4Q0jVayoMVUqQ67NhptaDIB3gqryXwIr4ukw+zdn3BpJ+CwsT+0fHXdHdcVPHV0vghktq38nVDHU/tafmR+Sm3HM+1Z+MBZlfk8RRpVg++nVHtNAhj/AHqbs8nBUhs4db+X+q0qTZmcIp8nRnGtgxVbloL25rka83m/eCSDlqJVwbOj32+RVTH03XPc7M5Ekad6qy7Nr0aMGtOnyajYNDB08unWe94BzPSDAT4XBdXg3hu08QbtKTg3MdENYBaOEW+q4HC1gKtItbm2wwTkXAz5SFewT61Q1nN1qyHkwJudLgPXzWN4XJ/32bfrqK5/vB1rSeHqPmnLvu+oXHf4TV6o/E35pjs6qBNpgZ6t+a6OxytV7NrlG4c2BEG8bxO9H5Kg8w4w4gVj7OfuN+S5IlTpYhzfZc5vG1xE+Si3zZNR4o78xwf5KYcN8+S4mnVxJALXV4OhDqkHuzU/pOKHvV/EvUtivQ7HnW8CkuM+n4rr1v5kkbBodtsDaDsFWqbOx4/VONrSdGk6EHqnjuKzuUuxH4SqWnpMdJpu6w4H7wVj9KFLnMdW4gMA/CMj2Zpcn+UlPEURgsdlGVGscy0j2Q7eOE7xqs2FyUVP32WzqfHyc6TO8yq2OrkMIn2svBaG1cA+hUdTeMxoRmHNOjmneCsTaHtDPQZrVOf22U44/dRQqTJVauVaqalVMWYCzo0MVKp0AOJJVqMlVZT6AR6VSR2pMcSRCaU5TIGIIdRs+YUyVNoksG8uaO/NMRfpBbex9iVMQDaIaNXHQTuHErd2dyIF4L33MhpyETIBhdtToMpsDGANa3QBYM3lpcR7N2Hxm+ZdHLYfZdLZ/N1ZucOcknVxshrQO8rgcJhRUp1HnXnAJ4EhzvyXe8u6sCiz9957gAPmuL2T/wCEef8A1DR/9TitHhW47PtmfzGk9V8D7B2ycK51Oq3nKFXKtTO8bqjODxuPYtPa2x20rX03c5Rqi6lUHvDquG5w3hY2Io3jPXcVY5O7b+jl1DENL8NUI5xnvMduq0+Dh6rY04u0ZLU1TJ82OP8AfmmqYcObBMjsV7a2yTRc0h3OUqguo1W+y9vwB4hUgz+zkrE00U04shR2e1pDgMxkFaDOzykZoMOGmfiFIE6mIGZk6DtQkl0NtvstDIa5cZWNtHaN/RaejvPW/ohbQ2hf0W5N9Xf07EbZuB9589gy8yk3ZJJR5ZUdg3Bl5yEiBvIO+EsJhDUDrdWiY49krV2wf1R11Gveq3J8ZvzjIfFRrkltxYbYW2OZmlVnmyZmOlSdoXAbxpI7PPpXve2ILcxIIMtc06EHeFz+0dl3guZ7Xb739VX2Ltg0v1VWTTkxvdScfeaOHFv5o6B/cv2dLz7+DfM/JJAupf8AmMN/8j/9KSNkQ1kY20Nqvr1HVKhLnvMuMAem5UMVTuzAzHqkMjx7E1Wrb46CZ8SnSSoF2Fr7Ze+k2m7pWHoOOZaN4HZ2Kxi9j81SHOE8++HWdSnxf946xuCzsM59J1OsAJa4PZcAZLTMlp1bK9F2xRp7Uwv02hDa9JsYhgOoaJJ7wMwd47lROXKvovivR5bWbmqlSnLgNFer6nvVOOmz94fFERyLAbHkhPpcECrUIqOEmJO9TNdRdokuUSzVmjhpEvcGjgM3HwWe/EkcE7a7iN0aDVMXRdqVGj2B4nM/IKrUaSe3jKejc4xLG7s7vWBojDA1nPLGgS0EzlBA3tM56hK0uySjKXSPYOQG2HYnDQ8zUpENeesI6LvLLwXS1aEid68p5GVq2FbUb0W3FpJILpy3ZrewHKutUqVWXACmQBlmZaDn4rk5sf3Nx6Ovi21SYb9I1AdEnT6PVj94AkepC4nZtdowTm7ziQe5opRPqj8qtvVK76jHPkUoa2Moui7TyWfsp/6k6/tN2furreLjccas4/lzvI6Ch43H4oeJp3d40n4Ir6g3mO0DL0TOfluPfGa1mQs7B2/zTTh8QC/DvMke/Sd9pSO7tGhRcVRdTPWac2Oacnt3GFl4qkHaCCNOBCbBbRLGmlUBLNW8WO4jsO8KKVE29i+K3bpqdIHHNZ+Nxxf0RNs+LjxPyQK+JLshkNw4niVbwuEA9rXvyHiP6JsVUNgaVvSME7hIkeB3rTGI7P77VVNE8Ce4h3xzSNPiSO8GPNCIt2S2g/8AVkTwy8eCr7FfBd3BSxgPNu4d8jX0VfZuru7iR6o+SX+pvitwnzEfkqG08K1/SBAeOItB7DlEpBnb35j4hIOPGe5wd6HNMiYvNu6p8klu853eTvmnSpD2ZSq1A0TlJ07f6I1HZ9jRWrj2s6bDkX8HuG5nxR8BhWsaMRiBM/saX2hHvOG6mPVVMVinVHl7zc4nfuHAcAOCrTc3+ibqK/Y7q1xJOc/7JtmbVqYSo51I9F7Sx7To5pEEH8igk8cu7JM5s9vYP7yUpJNCg2mAxFLMxxValRl4n3c1erqv7Nx4Nn+ys2N8mvNFKNow6rpcTxJTB5THVIq2jOnQ7nSiNfkPFCbG9ScQPZkcUmiSkW8Fqt+lUh7ZIEMcdfvNXJmq7j5IoxToifHfrxVU8Wxpx+SoLo62rtmmzMunsCxnbdIc91OW84elnoAIEO471jJQiHjxiLL5mSf6LdKsSXTvGfaVsYD9if4v/QufpmFv4HOgf4n/AErVExTCDWA49x0KcSNYHd8YKBI3+g/IqZAAknojsz7gpEAwqGJJEDfkfDvVDEVr3TEf3vUK1YvPAbh+Z7VYpU7cxnxI+XBIl0G2PXptcW1Bk4QH72HcY3jir+Ipmm4tJAdkRG8HQidQVkVmA5jXer2zcY17RRrGB/wnn3D1T9w+iYPklfmdx7Db6HVF59w94HvEHxhV8TScxxY4QRudHo7eoB26I7ukPXNBENjKhLDLR3g5eCrbMOZ0zA1+aVZwg9o7fghYR2ummh0PYkSXRsEAatPDIiPPUJ2nfGvHPzVRg3tBH7pjwUxXOoce0OEH8W9MiWpH3PX/AFJIHOu4D+X5pIA0OVX7dn8Cl/kWDw7ykkoYvwROf5A627vRfkEklNi+SVTej4X9hjP4Df8A9WJJLHj/ACN+b8Dj96cpJK8yDFIJJIERcpN0SSR8gOkEklICW9b+zv2Q/ij/ACJJJxIyGx25AxPsU/8A3fEJJKRBdkcL8lcoajwSSSCRLFe27u/JZztSkkmSXR0m3/YofwG/ErH3hJJBEt4vR3cFW2f737qSSRJdEqOviPyVmr7bv3CkkmRKySSSAP/Z');