-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T16:04:33.750+0000
-- flowId: 5af67dca-114a-4904-930e-00916227b3bd
-- flowName: Tempi di risposta del servizio - OK Con tempi più alti
--
-- Important
--  *) Sensitive credential values are removed from exported SQL.
--  *) Before you deploy this SQL, update the Kafka connector properties and values
--     with the required configuration for the target environment.
-- -------------------------------------------
CREATE TABLE `source_1`
(
    `C_BNC_EMTT`                   STRING,
    `C_BNC_RGLM`                   STRING,
    `C_BNC_PGTC`                   STRING,
    `C_ST_RCH_GT`                  STRING,
    `C_ST_RCH_EMTT`                STRING,
    `ESITO`                        STRING,
    `S_PREF_PK_OP`                 STRING,
    `DELAY1200`                    BIGINT,
    `DELAY1210`                    BIGINT,
    `V_OP_AUTZ`                    DOUBLE,
    `event_time`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    WATERMARK FOR `event_time` AS `event_time` - INTERVAL '1' SECOND
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.PRIMO.OUTPUT',
    'properties.bootstrap.servers' = 'minimal-prod-kafka-bootstrap.event-automation.svc:9093',
    'scan.startup.mode' = 'earliest-offset',
    'format' = 'json',
    'json.ignore-parse-errors' = 'true',
    'properties.security.protocol' = 'SASL_SSL',
    'properties.sasl.mechanism' = 'SCRAM-SHA-512',
    'properties.ssl.truststore.type' = 'PEM',
    'properties.tls.pemChainIncluded' = 'false',
    'properties.ssl.endpoint.identification.algorithm' = '',
    'properties.ssl.truststore.certificates' = '-----BEGIN CERTIFICATE-----
MIIG2DCCBMCgAwIBAgIUZzUqGd/c++cRFqQqJzGMTjueR18wDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE1NDBaFw0yNDA3MDMxNDE1NDBaMDIxEzARBgNVBAoMCmlvLnN0cmltemkxGzAZBgNVBAMMEm1pbmltYWwtcHJvZC1rYWZrYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMQVp4RiTkZx/+cqLD+g96DF0kx8ezKYw+tuwBY7BTK0QPRKaZA1ad3LrmjArEF7vqxLHC9934qXGP9tyF3eZZkHdJuWenLkhMUvR67o+lOMn1UFA6BSUj05kuS5F2KGUFNpDPJq0/afDJJ/RrhOBHziMCrSVFN4XqOCbxe81iTaRGLUl2g/2+newbefn+tyreIiwL0OeQTYBFRad18V6bwNmvt+2av5ud1AsIjt7AQ6z/F3R+k83bxbFcx4jJ7CiZbGZzcKIQa67Z7SyqDgu8B9mErNV4wZoWCjGP1CQJTlh8uI+i8drqUuXntX8RrvxMllXPxUbN79wCmfhgj9oAkCAwEAAaOCAukwggLlMIIC4QYDVR0RBIIC2DCCAtSCL21pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3Zjgj1taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsgittaW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9ugi1taW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb26CUm1pbmltYWwtcHJvZC1rYWZrYS0wLm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3ZjLmNsdXN0ZXIubG9jYWyCWm1pbmltYWwtcHJvZC1rYWZrYS0wLWV2ZW50LWF1dG9tYXRpb24uYXBwcy42NWMwYTE4ZTcxYTY5YzAwMTFlYmIxNmEuY2xvdWQudGVjaHpvbmUuaWJtLmNvbYI/bWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsghxtaW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwgkRtaW5pbWFsLXByb2Qta2Fma2EtMC5taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Y4JibWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CMW1pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXAuZXZlbnQtYXV0b21hdGlvbi5zdmOCGm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzMA0GCSqGSIb3DQEBDQUAA4ICAQBrhtj9QaWP1VUXTT2OWraA9/Jj/yTmSPdltWu0yvnK+sOt7UjZsnxwsPBTsax6LLeQUgMH+yKqNWLxR42GjfupnPDJCHCuOXAV7y4Hst8I8KlkdzZNDgVo7ApCWqqRYVqOc2LAwUoThWmSsljCcf+8tKp0EYVEOCp7Zf2SkTts/V6TGMYp0oN/MOaFWSC/rXmr/CFAV3uvi00k4ZZwp3gF0koES+kThH2tCsJh28mLTo6sn/soLwRYByK1ndBO3WC8r4OMtXxI9K40hZDO8NeNqP57ebpeojKozYrsp1yXe5rxKMREZfrQP9TMQWU/yjxX63YNKShtgz2wVydQrhDzDAV7oSZF/QtA5CyA7xd20RlGTA0GnKX43Nhr4X2MLKk+ehiMtAJi3Cn8AMA+I5PAd8k8TOPYlVSBGPWi2D7O6cb+ni0W5RNL/O9qBdmiwVb2+jmi3IruX3IMCEo+n4hQ+JHT3Zs2IcQoznACjIEdS+NfoLxrm+ovg/uqeejs7eH+49Gx5kR8cn/A6/0sijziiAVdf+iEhxl3FjbwGyEhMCq4rgelvO71qubGxvI1C4qkM1TpaVHjTKmeNQ3aKGoaBOeHE3/MFeHBjyrBKwxqJOsFP0fzK2S22Uvmsy6az/WrDMx7mj3xI/Ct2oWCkxAvN9Q5MvFtvnXwl6knMud5lQ==
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
);

CREATE TEMPORARY VIEW `Transazioni OK` AS
SELECT * FROM `source_1`
WHERE ESITO = 'AUTORIZZATA';

CREATE TEMPORARY VIEW `OK Tempi più alti` AS
SELECT
    `C_BNC_EMTT`                   AS `C_BNC_EMTT`,
    `C_BNC_RGLM`                   AS `C_BNC_RGLM`,
    `C_BNC_PGTC`                   AS `C_BNC_PGTC`,
    `C_ST_RCH_GT`                  AS `C_ST_RCH_GT`,
    `C_ST_RCH_EMTT`                AS `C_ST_RCH_EMTT`,
    `ESITO`                        AS `ESITO`,
    `S_PREF_PK_OP`                 AS `S_PREF_PK_OP`,
    `DELAY1200`                    AS `DELAY1200`,
    `DELAY1210`                    AS `DELAY1210`,
    `V_OP_AUTZ`                    AS `V_OP_AUTZ`,
    `windowStartTime`              AS `INIZIO_INTERVALLO`,
    `windowEndTime`                AS `FINE_INTERVALLO`,
    `OK Tempi più alti_topN`       AS `topN`,
    `event_time`                   AS `event_time`
FROM (
SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY `windowStartTime`, `windowEndTime`
        ORDER BY `DELAY1200` DESC
    ) AS `OK Tempi più alti_topN`
FROM (
SELECT
    *,
    `window_start` AS `windowStartTime`,
    `window_end` AS `windowEndTime`,
    `window_time` AS `windowResultTime`
FROM TABLE (
    TUMBLE( TABLE `Transazioni OK`, DESCRIPTOR(`event_time`), INTERVAL '1' SECOND )
)
)
) WHERE `OK Tempi più alti_topN` <= 10;

CREATE TEMPORARY VIEW `Calcolo Media` AS
SELECT
    `AVG_T_ALTI_OK`,
    `INIZIO_INTERVALLO`,
    `FINE_INTERVALLO`
FROM (
SELECT
    AVG(`DELAY1200`) AS `AVG_T_ALTI_OK`,
    `window_start` AS `INIZIO_INTERVALLO`,
    `window_end` AS `FINE_INTERVALLO`
FROM TABLE (
    TUMBLE( TABLE `OK Tempi più alti`, DESCRIPTOR(`event_time`), INTERVAL '1' SECOND )
)
GROUP BY
    `window_start`,
    `window_end`,
    `window_time`
);

CREATE TEMPORARY VIEW `Set Flag Identificativo` AS
SELECT
    `INIZIO_INTERVALLO`            AS `INIZIO_INTERVALLO`,
    `FINE_INTERVALLO`              AS `FINE_INTERVALLO`,
    CAST('OK_ALTI' AS STRING)      AS `FLAG`,
    CAST (AVG_T_ALTI_OK  AS DOUBLE) / 1000 AS `RESPONSE_TIME`
FROM `Calcolo Media`;

CREATE TABLE `sink_1`
(
    `INIZIO_INTERVALLO`            TIMESTAMP(3),
    `FINE_INTERVALLO`              TIMESTAMP(3),
    `FLAG`                         STRING,
    `RESPONSE_TIME`                DOUBLE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.TEMPI_RISPOSTA',
    'properties.bootstrap.servers' = 'minimal-prod-kafka-bootstrap.event-automation.svc:9093',
    'scan.startup.mode' = 'earliest-offset',
    'format' = 'json',
    'properties.security.protocol' = 'SASL_SSL',
    'properties.sasl.mechanism' = 'SCRAM-SHA-512',
    'properties.ssl.truststore.type' = 'PEM',
    'properties.tls.pemChainIncluded' = 'false',
    'properties.ssl.endpoint.identification.algorithm' = '',
    'properties.ssl.truststore.certificates' = '-----BEGIN CERTIFICATE-----
MIIG2DCCBMCgAwIBAgIUDkC/eNHCtO1mQTWRNqzrPCqW3RYwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE1NDBaFw0yNDA3MDMxNDE1NDBaMDIxEzARBgNVBAoMCmlvLnN0cmltemkxGzAZBgNVBAMMEm1pbmltYWwtcHJvZC1rYWZrYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCkXiUPjy29aGyROWRbfPxGAhKgNSaesK61fGLGsU/leIc+yVsFXvMBGHuCZ8lcQBphv8k+/Z2zgIuzd+UazEDVVSTnE2SZwiQzpmMK6icqno/IX/pqQUIt9uk2+GMXX2BD5/7EFNelx+h/CR/M/ImfOMSB2T3D3QqTXFabik5CpD1AklPzhH6S/YyCAkts3ZeGuXHPV83XE7Rg3BzIyAvhjtJlh29TOHaaf4e4XmuPQ+fJEeeOZ6ghGeJa40k75t2N+ypN8ZyoFS/kq+p2GStIa2MOTl5lnV4s+UuPwkoAEEWalqoSEUYlXTDNunWbqilsQkGqlgBhbJDqo4aar+8CAwEAAaOCAukwggLlMIIC4QYDVR0RBIIC2DCCAtSCL21pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3Zjgj1taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglJtaW5pbWFsLXByb2Qta2Fma2EtMS5taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglptaW5pbWFsLXByb2Qta2Fma2EtMS1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CGm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzgjFtaW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb24uc3ZjgittaW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9ugi1taW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb26CP21pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXAuZXZlbnQtYXV0b21hdGlvbi5zdmMuY2x1c3Rlci5sb2NhbIJibWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CHG1pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXCCRG1pbmltYWwtcHJvZC1rYWZrYS0xLm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3ZjMA0GCSqGSIb3DQEBDQUAA4ICAQAVWyOwXbiUhxIznzhgdVcx1QyxCGwm1wltITITU+piqinP935TtttZ8k8zAJPN7gNqwdVjGbfxLyCDkdyslP4tW5GJ8fHHwYLQqiw26nwo9utDEaNJuPWogxOSYeKN1rEPyVrEPFQqNOF0LN5RJtYmzpmCaGVjjM45vbE4h1gBWiFcTrqStwMhXvr/ik7gwDvE5XjZjAKHxW9xuxIm5BkpowFqDND/tJVNpOdJ8kUemIQC4y3B84yyHEK2rA2sXv6O8nkbzjoj3/axLyaHNRRYyGRJi7ld4MAH51UESAVriZqX4c1sWVicZHDmDvi0QsvkUjIsEnCY9xCZnL7F9x8lXjaXiOJuU5c1f4yZFAzWBbVJe0VYxg83FhoOSl4dyFbwVeKP5IWKC7XBWkPu/42iojqeDlqcB9J3Q5Sb9WRdtqTp/nQHCw4wIo/Bt06bT44Xsmo5MBVecSaB4oFkeJEKaiO+Bdca6Xj77+8b1bBCwOxYhBiXTln9iQ7PDZmo6Dw4Ep2tMRsoTR8pugDYwS7KU7nLXSIZt4pPreY0rgzAdixGJDScIwCW8JbKduAGQc9/g3SZrv0kNGHzX1r1EJ9QFvFHnYv2m35z1+3Hf218c7tsPGZl9wQGC7Geof4khoe2FBqLZirVyWotx9tp9uOdJwG1PRTPkoh/hHsG2gIRjA==
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
);

INSERT INTO `sink_1` SELECT * FROM `Set Flag Identificativo`;
-- -------------------------------------------
