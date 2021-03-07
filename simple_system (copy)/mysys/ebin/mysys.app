%% This is the application resource file (.app file) for the 'base'
%% application.
{application,mysys
[{description, "test of app  " },
{vsn, "1.0.0" },
{modules, 
	  []},
{registered,[mysys,front_end,logic_node,service_node]},
{applications, [kernel,stdlib,sasl]},
{mod, {front_end_app,[]}},
{start_phases, []}
]}.
