-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T16:03:59.444+0000
-- flowId: 26cfa409-2894-49e8-84ad-44020e521d3f
-- flowName: Count totali
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
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
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
);

CREATE TEMPORARY VIEW `Approvate` AS
SELECT * FROM `source_1`
WHERE ESITO LIKE 'AUTORIZZATA';

CREATE TEMPORARY VIEW `Non Approvate` AS
SELECT * FROM `source_1`
WHERE `ESITO` NOT LIKE 'AUTORIZZATA';

CREATE TEMPORARY VIEW `Somma Approvate` AS
SELECT
    `COUNT_ESITO_POS`,
    `ESITO`,
    `aggregateStartTime`,
    `aggregateEndTime`,
    `aggregateResultTime`
FROM (
SELECT
    COUNT(`ESITO`) AS `COUNT_ESITO_POS`,
    `ESITO` AS `ESITO`,
    `window_start` AS `aggregateStartTime`,
    `window_end` AS `aggregateEndTime`,
    `window_time` AS `aggregateResultTime`
FROM TABLE (
    TUMBLE( TABLE `Approvate`, DESCRIPTOR(`event_time`), INTERVAL '1' SECOND )
)
GROUP BY
    `window_start`,
    `window_end`,
    `window_time`,
    `ESITO`
);

CREATE TEMPORARY VIEW `Somma Non Approvate` AS
SELECT
    `ESITO`,
    `aggregateStartTime`,
    `aggregateEndTime`,
    `aggregateResultTime`,
    `COUNT_ESITO_NEG`
FROM (
SELECT
    `ESITO` AS `ESITO`,
    `window_start` AS `aggregateStartTime`,
    `window_end` AS `aggregateEndTime`,
    `window_time` AS `aggregateResultTime`,
    COUNT(`ESITO`) AS `COUNT_ESITO_NEG`
FROM TABLE (
    TUMBLE( TABLE `Non Approvate`, DESCRIPTOR(`event_time`), INTERVAL '1' SECOND )
)
GROUP BY
    `window_start`,
    `window_end`,
    `window_time`,
    `ESITO`
);

CREATE TEMPORARY VIEW `intervalJoin_1` AS
SELECT
    `Somma Approvate`.`COUNT_ESITO_POS` AS `COUNT_ESITO_POS`,
    `Somma Non Approvate`.`COUNT_ESITO_NEG` AS `COUNT_ESITO_NEG`,
    `Somma Approvate`.`aggregateStartTime` AS `aggregateStartTime`,
    `Somma Approvate`.`aggregateEndTime` AS `aggregateEndTime`
FROM `Somma Non Approvate` JOIN `Somma Approvate` ON
    `Somma Approvate`.`aggregateStartTime` = `Somma Non Approvate`.`aggregateStartTime` AND `Somma Approvate`.aggregateEndTime = `Somma Non Approvate`.aggregateEndTime
WHERE `Somma Approvate`.`aggregateResultTime`
    BETWEEN `Somma Non Approvate`.`aggregateResultTime` - INTERVAL '5' MINUTE
    AND `Somma Non Approvate`.`aggregateResultTime` + INTERVAL '5' MINUTE;

CREATE TEMPORARY VIEW `Rapporto Approvate-Non Appovate` AS
SELECT
    `COUNT_ESITO_POS`              AS `PAGAMENTI_AUTORIZZATI`,
    `COUNT_ESITO_NEG`              AS `PAGAMENTI_NEGATI`,
    `aggregateStartTime`           AS `INIZIO_INTERVALLO`,
    `aggregateEndTime`             AS `FINE_INTERVALLO`,
    CAST(COUNT_ESITO_POS AS DOUBLE ) / (CAST (IF(COUNT_ESITO_NEG = CAST (0 AS BIGINT), 1, `COUNT_ESITO_NEG`) AS DOUBLE) + CAST(COUNT_ESITO_POS AS DOUBLE )) AS `PERCENTUALE_NEGATI_SU_TOTALE`,
    COUNT_ESITO_NEG + COUNT_ESITO_POS AS `TOTALE_PAGAMENTI`
FROM `intervalJoin_1`;

CREATE TABLE `sink_1`
(
    `PAGAMENTI_AUTORIZZATI`        BIGINT,
    `PAGAMENTI_NEGATI`             BIGINT,
    `INIZIO_INTERVALLO`            TIMESTAMP(3),
    `FINE_INTERVALLO`              TIMESTAMP(3),
    `PERCENTUALE_NEGATI_SU_TOTALE` DOUBLE,
    `TOTALE_PAGAMENTI`             BIGINT
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.TOTALI',
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

INSERT INTO `sink_1` SELECT * FROM `Rapporto Approvate-Non Appovate`;
-- -------------------------------------------
