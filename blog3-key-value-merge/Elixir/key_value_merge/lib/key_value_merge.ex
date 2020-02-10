defmodule KeyValueMerge do
  import Employee

  def run_key_value_examples do
    struct1 = %Employee{}
    IO.puts("Employee is #{inspect(struct1)}\n")

    defaultEmployee = %{
      id: 0,
      name: %{
        first: '(first)',
        last: '(last)'
      },
      birthdate: '1990-01-01'
    }

    aaron =
      Map.merge(defaultEmployee, %{
        id: 1,
        name: %{
          first: "Aaron",
          last: defaultEmployee.name.last
        },
        birthdate: '2000-06-30'
      })

    brian = %{defaultEmployee | id: 2}
    connor = %{defaultEmployee | id: 3, name: %{first: "Connor"}}
    david = %{defaultEmployee | id: 4, name: Map.merge(defaultEmployee.name, %{first: "David"})}
    enrique = %{defaultEmployee | id: 5, name: %{defaultEmployee.name | first: "Enrique"}}
    
    employees = [aaron, brian, connor, david, enrique]

    for {employee, index} <- Enum.with_index(employees) do
      IO.puts("#{index}: #{inspect(employee)}")
    end

    ## Enum.each([aaron, brian, connor, david, enrique], fn name ->
    #    IO.inspect(name)
    # end)
  end
end
