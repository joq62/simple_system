%% This is the application resource file (.app file) for the 'base'
%% application.
{application,service_node,
[{description, "test  " },
{vsn, "1.0.0" },
{modules, 
	  [service_node_app,service_node_sup,adder]},
{registered,[service_node]},
{applications, [kernel,stdlib,sasl]},
{mod, {service_node_app,[]}},
{start_phases, []}
]}.
