defmodule Employee do
  defstruct id: 0,
            name: %{
              first: '(first)',
              last: '(last)'
            },
            birthdate: '1990-01-01'
end
