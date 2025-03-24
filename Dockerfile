ARG BASE_IMAGE
FROM ${BASE_IMAGE}
COPY target/*.car ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
COPY deployment/docker/resources/wso2carbon.jks ${WSO2_SERVER_HOME}/repository/resources/security/wso2carbon.jks
COPY deployment/docker/resources/client-truststore.jks ${WSO2_SERVER_HOME}/repository/resources/security/client-truststore.jks
COPY target/libs/*.jar ${WSO2_SERVER_HOME}/lib/