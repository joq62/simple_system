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
	erlc -o ebin src/*.erl;
	erlc -o ebin test/*.erl
	erl -pa ebin -s front_end_eunit start -sname front_end_test -setcookie test -sasl sasl_error_logger true
