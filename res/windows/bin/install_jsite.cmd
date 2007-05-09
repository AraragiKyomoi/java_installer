@set PATH=%SYSTEMROOT%\System32\;%PATH%
@set INSTALL_PATH=$INSTALL_PATH
@set JAVA_HOME=$JAVA_HOME
@cd /D %INSTALL_PATH%

@if not exist jsite goto nojsite 
@del /F jsite > NUL
@if not exist offline goto end
@echo "Downloading jSite"
@java -jar bin\sha1test.jar jSite/jSite.jar . > NUL
:end
@echo @start javaw -jar jSite.jar > jsite.cmd
:nojsite
