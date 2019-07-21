set Path=../jre6/bin;../lib
 
java -XX:PermSize=96M -cp ../lib/jaxen-1.1.1.jar;../lib/jdic.jar;../lib/registry.jar;../lib/jet.jar;../lib/lucene-core-2.4.0.jar;../lib/log4j-1.2.15.jar;../lib/jdom.jar;../lib/jawin.jar;../lib/ccbnsagent.jar;../lib/adapter.jar;../conf;../lib/server.jar;../lib/jmsbridge.jar;../lib/xercesImpl.jar;../lib/util.jar;../lib/scriptengine.jar;../lib/inria.jar;../lib/jndi.jar;../lib/jms.jar;../lib/jsse.jar;../lib/jnet.jar;../lib/jcert.jar;../lib/commons-logging.jar;../lib/WLPTSoftSign.jar;../lib/bcprov-jdk14-145.jar;../lib/bctest-jdk14-145.jar;../lib/jce_policy-1_4_2.zip;../lib/ant.jar;../lib/sigar.jar;../lib/commons-codec-1.10.jar -Dfile.encoding=GBK com.digitalchina.router.Router ../conf/server.properties

pause