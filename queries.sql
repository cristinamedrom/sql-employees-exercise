/*1.- Encuentra todos los empleados y sus respectivos nombres de departamento.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID";

/*2.- Muestra todos los empleados y sus departamentos, incluyendo a aquellos empleados que no tienen departamento asignado.*/

select d."DepartmentName", e."EmployeeID", e."FirstName", e."LastName" from departments d left join employees e on d."DepartmentID" = e."DepartmentID";

/*3.- Haz una lista completa de todos los empleados y todos los departamentos, independientemente de si hay una coincidencia entre ellos o no.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e full join departments d on e."DepartmentID" = d."DepartmentID";

/*4.- Encuentra todos los empleados que no tienen relaciones con ningún departamento.*/

select e."EmployeeID", e."FirstName", e."LastName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentID" is null;

/*5.- Identifica los departamentos que no tienen ningún empleado relacionado.*/

select d."DepartmentID", d."DepartmentName" from departments d left join employees e on d."DepartmentID" = e."DepartmentID"  where e."EmployeeID"  is null;

/*6.- Selecciona todos los empleados que trabajan en el departamento de IT.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID"  where d."DepartmentName"  = 'DevelopmentDept';

/*7.- Lista todas las filas que no tienen una coincidencia en la otra tabla, es decir, empleados sin departamento y departamentos sin empleados.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e full join departments d on e."DepartmentID" = d."DepartmentID" where e."EmployeeID" is null or d."DepartmentID" is null;

/*8.- Muestra todos los empleados y sus departamentos ordenados por el apellido del empleado.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" order by e."LastName";

/*Encuentra todos los empleados del departamento de HR.*/

select e."EmployeeID", e."FirstName", e."LastName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID"  where d."DepartmentName"  = 'AdminDept';