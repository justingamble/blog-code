
const defaultEmployee = {
  id: 0,
  name: {
    first: '(first)',
    last: '(last)',
  },
  birthdate: '1990-01-01',
};

const aaron = Object.assign (
  {},
  defaultEmployee,
  {id: 1},
  {
     name: Object.assign({}, defaultEmployee.name, {first: "Aaron"}),
  },
);

const brian = {
  ...defaultEmployee,
  id: 2,
  name: {
    ...defaultEmployee.name,
  },
};

const printEmployee = (employee, index) => {
    process.stdout.write(index + ": " + JSON.stringify(employee) + "\n");
};

employees = [aaron, brian];
employees.forEach(printEmployee);

//#printEmployee(george, "George");
//#printEmployee(frank, "Frank");
