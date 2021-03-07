%% This is the application resource file (.app file) for the 'base'
%% application.
{application,front_end,
[{description, "test  " },
{vsn, "1.0.0" },
{modules, 
	  [front_end_app,front_end_sup,adder]},
{registered,[front_end]},
{applications, [kernel,stdlib,sasl]},
{mod, {front_end_app,[]}},
{start_phases, []}
]}.
