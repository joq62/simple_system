%% This is the application resource file (.app file) for the 'base'
%% application.
{application,logic_node,
[{description, "test  " },
{vsn, "1.0.0" },
{modules, 
	  [logic_node_app,logic_node_sup,adder]},
{registered,[logic_node]},
{applications, [kernel,stdlib,sasl]},
{mod, {logic_node_app,[]}},
{start_phases, []}
]}.
