defmodule BambooChallengeWeb.PageController do
  use BambooChallengeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
