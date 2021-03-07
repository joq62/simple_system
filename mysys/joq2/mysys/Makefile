clean:
	rm -rf mysys rebar.lock
s1:
	rebar3 new release mysys desc="simple system";
	cp Makefile mysys;
	echo do cd mysys
s2:
	perl -i -pe 's/0\.1\.0/1.0.0/' ./apps/mysys/src/mysys.app.src ./rebar.config;
	rebar3 compile;
	cat _build/default/lib/mysys/ebin/mysys.app
s3:
	cp -v /home/joq62/erlang/simple_system/front_end/src/*.erl apps/mysys/src;
	cp -v /home/joq62/erlang/simple_system/logic_node/src/*.erl apps/mysys/src;
	cp -v /home/joq62/erlang/simple_system/service_node/src/*.erl apps/mysys/src;
	cp -v /home/joq62/erlang/simple_system/mysys/src/*.erl apps/mysys/src;
	ls apps/mysys/src;
	rebar3 do clean, compile;
	rebar3 shell
r1:
	rebar3 release;
	_build/default/rel/mysys/bin/mysys console
r2:
	rebar3 as prod release
r3:
	rebar3 as prod tar
tar1:
	cp /home/joq62/erlang/simple_system/mysys/joq2/mysys/_build/prod/rel/mysys/*.tar.gz /home/joq62/erlang/test_releases;
	echo cd /home/joq62/erlang/test_releases;
	echo tar xf *.tar.gz
