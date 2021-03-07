%% This is the application resource file (.app file) for the 'base'
%% application.
{application,mysys,
[{description, "test of app" },
{vsn, "1.0.0" },
{modules, 
	  [mysys,front_end,front_end_sup,logic_node,logic_node_sup,
	   service_node,service_node_sup]},
{registered,[mysys,front_end,logic_node,service_node]},
{applications, [kernel,stdlib,sasl]},
{mod, {mysys,[]}},
{start_phases, []}
]}.
