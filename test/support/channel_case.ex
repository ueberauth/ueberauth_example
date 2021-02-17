defmodule UeberauthExampleWeb.ChannelCase do
  @moduledoc """
  This module defines the test case to be used by
  channel tests.

  Such tests rely on `Phoenix.ChannelTest` and also
  import other functionality to make it easier
  to build common data structures and query the data layer.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      import Phoenix.ChannelTest
      import UeberauthExampleWeb.ChannelCase

      # The default endpoint for testing
      @endpoint UeberauthExampleWeb.Endpoint
    end
  end

  setup do
    :ok
  end
end
