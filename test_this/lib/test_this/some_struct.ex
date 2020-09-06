defmodule TestThis.SomeStruct do
  defstruct present?: nil,
            first: nil,
            second: nil,
            third: nil,
            fifth: nil,
            sixth: nil

  @type t :: %__MODULE__{
          present?: boolean,
          first: String.t(),
          second: atom,
          third: String.t(),
          fifth: String.t(),
          sixth: String.t()
        }

  @spec for_test(false) :: t()
  def for_test(false) do
    %__MODULE__{
      present?: false,
      first: "",
      second: :just_for_test
    }
  end

  @spec for_test(true, String.t(), atom, String.t(), String.t(), String.t()) :: t()
  def for_test(true, first, second, third, fifth, sixth) do
    %__MODULE__{
      present?: true,
      first: first,
      second: second,
      third: third,
      fifth: fifth,
      sixth: sixth
    }
  end
end
