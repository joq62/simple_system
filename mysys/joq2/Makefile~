all:
	rm -rf ebin/*.beam src/*.beam test/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	erlc -o ebin src/*.erl;
	erlc -o ebin test/*.erl
	echo Done
doc_gen:
	echo glurk not implemented
eunit:
	rm -rf ebin/*.beam src/*.beam test/*.beam *.beam;
	rm -rf  *~ */*~  erl_cra*;
	erlc -o ebin /home/joq62/erlang/simple_system/front_end/src/*.erl;
	erlc -o ebin /home/joq62/erlang/simple_system/logic_node/src/*.erl;
	erlc -o ebin /home/joq62/erlang/simple_system/service_node/src/*.erl;
	erlc -o ebin src/*.erl;
	erlc -o ebin test/*.erl
	erl -pa ebin -s mysys_eunit start -sname mysys_test -setcookie test -config rb.config
