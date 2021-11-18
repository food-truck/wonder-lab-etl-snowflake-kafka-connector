FROM ftidatauatacr.azurecr.io/wonder-lab/connect-base

RUN curl -LJO https://wonderetldev.blob.core.windows.net/connect-lib/bc-fips-1.0.2.1.jar
RUN curl -LJO https://wonderetldev.blob.core.windows.net/connect-lib/bcpkix-fips-1.0.3.jar

RUN cp dist /usr/share/confluent-hub-components/ct-connect
RUN cp bc-fips-1.0.2.1.jar /usr/share/confluent-hub-components/ct-connect/lib/
RUN cp bcpkix-fips-1.0.3.jar /usr/share/confluent-hub-components/ct-connect/lib/
COPY target/*.jar /usr/share/confluent-hub-components/ct-connect/lib/