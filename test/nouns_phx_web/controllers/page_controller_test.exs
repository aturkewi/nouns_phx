defmodule NounsPhxWeb.PageControllerTest do
  use NounsPhxWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Nouns in a Bucket"
  end
end
