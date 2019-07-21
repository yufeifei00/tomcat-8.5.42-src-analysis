#!/bin/bash
serviceLog="../log/service.log"

if [ -f "$serviceLog" ];then
	rm -f $serviceLog
fi

touch $serviceLog

if [ $# == 0 ];then
	java -cp ../lib/jet.jar:../lib/jdom.jar:../lib/jawin.jar:../lib/adapter.jar:../conf:../lib/server.jar:../lib/jmsbridge.jar:../lib/xercesImpl.jar:../lib/util.jar:../lib/scriptengine.jar:../lib/inria.jar:../lib/jndi.jar:../lib/jms.jar:../lib/jsse.jar:../lib/jnet.jar:../lib/jcert.jar:../lib/commons-logging.jar -Dfile.encoding=GBK com.ccb.wlpt.util.settingLinuxVersion
elif [ $# == 4 ];then
	java -cp ../lib/jet.jar:../lib/jdom.jar:../lib/jawin.jar:../lib/adapter.jar:../conf:../lib/server.jar:../lib/jmsbridge.jar:../lib/xercesImpl.jar:../lib/util.jar:../lib/scriptengine.jar:../lib/inria.jar:../lib/jndi.jar:../lib/jms.jar:../lib/jsse.jar:../lib/jnet.jar:../lib/jcert.jar:../lib/commons-logging.jar -Dfile.encoding=GBK com.ccb.wlpt.util.settingLinuxVersion $1 $2 $3 $4
else
	echo "参数输入错误：客户号（商户号）、操作员号、操作员交易密码、文件证书密码按顺序必输，以空格分隔。"
	exit 0
fi

nohup java -XX:PermSize=96M -Xss256k -cp ../lib/jaxen-1.1.1.jar:../lib/jdic.jar:../lib/registry.jar:../lib/jet.jar:../lib/lucene-core-2.4.0.jar:../lib/log4j-1.2.15.jar:../lib/jdom.jar:../lib/jawin.jar:../lib/ccbnsagent.jar:../lib/adapter.jar:../conf:../lib/server.jar:../lib/jmsbridge.jar:../lib/xercesImpl.jar:../lib/util.jar:../lib/scriptengine.jar:../lib/inria.jar:../lib/jndi.jar:../lib/jms.jar:../lib/jsse.jar:../lib/jnet.jar:../lib/jcert.jar:../lib/commons-logging.jar:../lib/WLPTSoftSign.jar:../lib/bcprov-jdk14-145.jar:../lib/bctest-jdk14-145.jar:../lib/jce_policy-1_4_2.zip:../lib/ant.jar:../lib/sigar.jar:../lib/commons-codec-1.10.jar -Dfile.encoding=GBK com.ccb.wlpt.main.Router ../conf/server.properties  > $serviceLog  2>&1 &

tail -f $serviceLog
