defmodule SupervisorEctoWeb.CountView do
  use SupervisorEctoWeb, :view
  alias SupervisorEctoWeb.CountView

  def render("index.json", %{counts: counts}) do
    %{data: render_many(counts, CountView, "count.json")}
  end

  def render("show.json", %{count: count}) do
    %{data: render_one(count, CountView, "count.json")}
  end

  def render("count.json", %{count: count}) do
    %{id: count.id,
      count: count.count}
  end
end
