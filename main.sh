sed -i 's|${user.home}|/home/runner/${REPL_SLUG}|g' /home/runner/${REPL_SLUG}/WEB-INF/classes/application.properties

bin/start.sh && tail -f nohup.out
