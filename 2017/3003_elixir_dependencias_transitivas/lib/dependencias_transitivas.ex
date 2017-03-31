defmodule DependenciasTransitivas do
  #%{b: [:c, :e]}
  def depend(classes) do
  	keys = Enum.map(classes, fn {key, value} -> key end)
  	Enum.map(keys, fn (key) -> do_depend(key, classes) end)
  	#Enum.map(keys, )
    # Enum.map(classes, fn({key, value}) ->
    #   do_depend(element, classes)
    # end)
  end

   defp do_depend(key, classes) do
   	dependencies = classes[key]
    second_dp = Enum.map(dependencies, fn (k) -> classes[k] end)
    %{key => dependencies++second_dp}
    #dependencies = Enum.map(classes[key], fn(args) -> do_depend2(args, classes) end)
    #%{key => dependencies}
   end

   defp do_depend2(key, nil) do
     
   end

   defp do_depend2(key, dependencies) do
     %{key => dependencies[key]}
   end


end
