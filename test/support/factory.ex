defmodule Voting.Factory do
  @moduledoc """
  Voting Factori
  """
  # with Ecto
  use ExMachina.Ecto, repo: Voting.Repo

  def admin_factory do
    %Voting.Admin{
      name: "Jane Smith",
      email: "email@example.com",
      password_hash: Bcrypt.hash_pwd_salt("123456")
    }
  end
end
