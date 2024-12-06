-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-03-28T17:40:36.478+0000
-- flowId: e2b4cd40-97cf-46e7-a8d3-949a482795ad
-- flowName: Prima Vista - V2 
--
-- Important
--  *) Sensitive credential values are removed from exported SQL.
--  *) Before you deploy this SQL, update the Kafka connector properties and values
--     with the required configuration for the target environment.
-- -------------------------------------------
CREATE TABLE `BPI010Z`
(
    `S_PREF_PK_OP`                 STRING,
    `C_BNC_PGTC`                   STRING,
    `C_BNC_EMTT`                   STRING,
    `C_BNC_RGLM`                   STRING,
    `C_ST_RCH_GT`                  STRING,
    `C_ST_RCH_EMTT`                STRING,
    `C_APPRVL`                     STRING,
    `V_OP_AUTZ`                    STRING,
    `event_time`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    WATERMARK FOR `event_time` AS `event_time` - INTERVAL '1' MINUTE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.BPI010Z',
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
MIIG2DCCBMCgAwIBAgIUDkC/eNHCtO1mQTWRNqzrPCqW3RYwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE1NDBaFw0yNDA3MDMxNDE1NDBaMDIxEzARBgNVBAoMCmlvLnN0cmltemkxGzAZBgNVBAMMEm1pbmltYWwtcHJvZC1rYWZrYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCkXiUPjy29aGyROWRbfPxGAhKgNSaesK61fGLGsU/leIc+yVsFXvMBGHuCZ8lcQBphv8k+/Z2zgIuzd+UazEDVVSTnE2SZwiQzpmMK6icqno/IX/pqQUIt9uk2+GMXX2BD5/7EFNelx+h/CR/M/ImfOMSB2T3D3QqTXFabik5CpD1AklPzhH6S/YyCAkts3ZeGuXHPV83XE7Rg3BzIyAvhjtJlh29TOHaaf4e4XmuPQ+fJEeeOZ6ghGeJa40k75t2N+ypN8ZyoFS/kq+p2GStIa2MOTl5lnV4s+UuPwkoAEEWalqoSEUYlXTDNunWbqilsQkGqlgBhbJDqo4aar+8CAwEAAaOCAukwggLlMIIC4QYDVR0RBIIC2DCCAtSCL21pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3Zjgj1taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglJtaW5pbWFsLXByb2Qta2Fma2EtMS5taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglptaW5pbWFsLXByb2Qta2Fma2EtMS1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CGm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzgjFtaW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb24uc3ZjgittaW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9ugi1taW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb26CP21pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXAuZXZlbnQtYXV0b21hdGlvbi5zdmMuY2x1c3Rlci5sb2NhbIJibWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CHG1pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXCCRG1pbmltYWwtcHJvZC1rYWZrYS0xLm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3ZjMA0GCSqGSIb3DQEBDQUAA4ICAQAVWyOwXbiUhxIznzhgdVcx1QyxCGwm1wltITITU+piqinP935TtttZ8k8zAJPN7gNqwdVjGbfxLyCDkdyslP4tW5GJ8fHHwYLQqiw26nwo9utDEaNJuPWogxOSYeKN1rEPyVrEPFQqNOF0LN5RJtYmzpmCaGVjjM45vbE4h1gBWiFcTrqStwMhXvr/ik7gwDvE5XjZjAKHxW9xuxIm5BkpowFqDND/tJVNpOdJ8kUemIQC4y3B84yyHEK2rA2sXv6O8nkbzjoj3/axLyaHNRRYyGRJi7ld4MAH51UESAVriZqX4c1sWVicZHDmDvi0QsvkUjIsEnCY9xCZnL7F9x8lXjaXiOJuU5c1f4yZFAzWBbVJe0VYxg83FhoOSl4dyFbwVeKP5IWKC7XBWkPu/42iojqeDlqcB9J3Q5Sb9WRdtqTp/nQHCw4wIo/Bt06bT44Xsmo5MBVecSaB4oFkeJEKaiO+Bdca6Xj77+8b1bBCwOxYhBiXTln9iQ7PDZmo6Dw4Ep2tMRsoTR8pugDYwS7KU7nLXSIZt4pPreY0rgzAdixGJDScIwCW8JbKduAGQc9/g3SZrv0kNGHzX1r1EJ9QFvFHnYv2m35z1+3Hf218c7tsPGZl9wQGC7Geof4khoe2FBqLZirVyWotx9tp9uOdJwG1PRTPkoh/hHsG2gIRjA==
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',

    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username=${ENV} password="GLn1KYvjYUN67K7m371PYnguWan7Q0mY";'
);

CREATE TABLE `BPI012Z`
(
    `S_PREF_PK_OP`                 STRING,
    `C_TP_MSG`                     STRING,
    `C_TRT_MSG`                    STRING,
    `E_RX_MSG_IN`                  STRING,
    `E_TX_MSG_OUT`                 STRING,
    `event_time`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    WATERMARK FOR `event_time` AS `event_time` - INTERVAL '1' MINUTE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.BPI012Z',
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
MIIG2DCCBMCgAwIBAgIUDkC/eNHCtO1mQTWRNqzrPCqW3RYwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE1NDBaFw0yNDA3MDMxNDE1NDBaMDIxEzARBgNVBAoMCmlvLnN0cmltemkxGzAZBgNVBAMMEm1pbmltYWwtcHJvZC1rYWZrYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCkXiUPjy29aGyROWRbfPxGAhKgNSaesK61fGLGsU/leIc+yVsFXvMBGHuCZ8lcQBphv8k+/Z2zgIuzd+UazEDVVSTnE2SZwiQzpmMK6icqno/IX/pqQUIt9uk2+GMXX2BD5/7EFNelx+h/CR/M/ImfOMSB2T3D3QqTXFabik5CpD1AklPzhH6S/YyCAkts3ZeGuXHPV83XE7Rg3BzIyAvhjtJlh29TOHaaf4e4XmuPQ+fJEeeOZ6ghGeJa40k75t2N+ypN8ZyoFS/kq+p2GStIa2MOTl5lnV4s+UuPwkoAEEWalqoSEUYlXTDNunWbqilsQkGqlgBhbJDqo4aar+8CAwEAAaOCAukwggLlMIIC4QYDVR0RBIIC2DCCAtSCL21pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3Zjgj1taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglJtaW5pbWFsLXByb2Qta2Fma2EtMS5taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglptaW5pbWFsLXByb2Qta2Fma2EtMS1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CGm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzgjFtaW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb24uc3ZjgittaW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9ugi1taW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb26CP21pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXAuZXZlbnQtYXV0b21hdGlvbi5zdmMuY2x1c3Rlci5sb2NhbIJibWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CHG1pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXCCRG1pbmltYWwtcHJvZC1rYWZrYS0xLm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3ZjMA0GCSqGSIb3DQEBDQUAA4ICAQAVWyOwXbiUhxIznzhgdVcx1QyxCGwm1wltITITU+piqinP935TtttZ8k8zAJPN7gNqwdVjGbfxLyCDkdyslP4tW5GJ8fHHwYLQqiw26nwo9utDEaNJuPWogxOSYeKN1rEPyVrEPFQqNOF0LN5RJtYmzpmCaGVjjM45vbE4h1gBWiFcTrqStwMhXvr/ik7gwDvE5XjZjAKHxW9xuxIm5BkpowFqDND/tJVNpOdJ8kUemIQC4y3B84yyHEK2rA2sXv6O8nkbzjoj3/axLyaHNRRYyGRJi7ld4MAH51UESAVriZqX4c1sWVicZHDmDvi0QsvkUjIsEnCY9xCZnL7F9x8lXjaXiOJuU5c1f4yZFAzWBbVJe0VYxg83FhoOSl4dyFbwVeKP5IWKC7XBWkPu/42iojqeDlqcB9J3Q5Sb9WRdtqTp/nQHCw4wIo/Bt06bT44Xsmo5MBVecSaB4oFkeJEKaiO+Bdca6Xj77+8b1bBCwOxYhBiXTln9iQ7PDZmo6Dw4Ep2tMRsoTR8pugDYwS7KU7nLXSIZt4pPreY0rgzAdixGJDScIwCW8JbKduAGQc9/g3SZrv0kNGHzX1r1EJ9QFvFHnYv2m35z1+3Hf218c7tsPGZl9wQGC7Geof4khoe2FBqLZirVyWotx9tp9uOdJwG1PRTPkoh/hHsG2gIRjA==
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="es-admin" password="GLn1KYvjYUN67K7m371PYnguWan7Q0mY";'
);

CREATE TABLE `BPI013Z`
(
    `S_PREF_PK_OP`                 STRING,
    `C_TP_MSG`                     STRING,
    `C_TRT_MSG`                    STRING,
    `E_RX_MSG_IN`                  STRING,
    `E_TX_MSG_OUT`                 STRING,
    `event_time`                   TIMESTAMP(3) METADATA FROM 'timestamp',
    WATERMARK FOR `event_time` AS `event_time` - INTERVAL '1' MINUTE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.BPI013Z',
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
MIIG2DCCBMCgAwIBAgIUDkC/eNHCtO1mQTWRNqzrPCqW3RYwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE1NDBaFw0yNDA3MDMxNDE1NDBaMDIxEzARBgNVBAoMCmlvLnN0cmltemkxGzAZBgNVBAMMEm1pbmltYWwtcHJvZC1rYWZrYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMCkXiUPjy29aGyROWRbfPxGAhKgNSaesK61fGLGsU/leIc+yVsFXvMBGHuCZ8lcQBphv8k+/Z2zgIuzd+UazEDVVSTnE2SZwiQzpmMK6icqno/IX/pqQUIt9uk2+GMXX2BD5/7EFNelx+h/CR/M/ImfOMSB2T3D3QqTXFabik5CpD1AklPzhH6S/YyCAkts3ZeGuXHPV83XE7Rg3BzIyAvhjtJlh29TOHaaf4e4XmuPQ+fJEeeOZ6ghGeJa40k75t2N+ypN8ZyoFS/kq+p2GStIa2MOTl5lnV4s+UuPwkoAEEWalqoSEUYlXTDNunWbqilsQkGqlgBhbJDqo4aar+8CAwEAAaOCAukwggLlMIIC4QYDVR0RBIIC2DCCAtSCL21pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3Zjgj1taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglJtaW5pbWFsLXByb2Qta2Fma2EtMS5taW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9uLnN2Yy5jbHVzdGVyLmxvY2FsglptaW5pbWFsLXByb2Qta2Fma2EtMS1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CGm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzgjFtaW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb24uc3ZjgittaW5pbWFsLXByb2Qta2Fma2EtYnJva2Vycy5ldmVudC1hdXRvbWF0aW9ugi1taW5pbWFsLXByb2Qta2Fma2EtYm9vdHN0cmFwLmV2ZW50LWF1dG9tYXRpb26CP21pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXAuZXZlbnQtYXV0b21hdGlvbi5zdmMuY2x1c3Rlci5sb2NhbIJibWluaW1hbC1wcm9kLWthZmthLWJvb3RzdHJhcC1ldmVudC1hdXRvbWF0aW9uLmFwcHMuNjVjMGExOGU3MWE2OWMwMDExZWJiMTZhLmNsb3VkLnRlY2h6b25lLmlibS5jb22CHG1pbmltYWwtcHJvZC1rYWZrYS1ib290c3RyYXCCRG1pbmltYWwtcHJvZC1rYWZrYS0xLm1pbmltYWwtcHJvZC1rYWZrYS1icm9rZXJzLmV2ZW50LWF1dG9tYXRpb24uc3ZjMA0GCSqGSIb3DQEBDQUAA4ICAQAVWyOwXbiUhxIznzhgdVcx1QyxCGwm1wltITITU+piqinP935TtttZ8k8zAJPN7gNqwdVjGbfxLyCDkdyslP4tW5GJ8fHHwYLQqiw26nwo9utDEaNJuPWogxOSYeKN1rEPyVrEPFQqNOF0LN5RJtYmzpmCaGVjjM45vbE4h1gBWiFcTrqStwMhXvr/ik7gwDvE5XjZjAKHxW9xuxIm5BkpowFqDND/tJVNpOdJ8kUemIQC4y3B84yyHEK2rA2sXv6O8nkbzjoj3/axLyaHNRRYyGRJi7ld4MAH51UESAVriZqX4c1sWVicZHDmDvi0QsvkUjIsEnCY9xCZnL7F9x8lXjaXiOJuU5c1f4yZFAzWBbVJe0VYxg83FhoOSl4dyFbwVeKP5IWKC7XBWkPu/42iojqeDlqcB9J3Q5Sb9WRdtqTp/nQHCw4wIo/Bt06bT44Xsmo5MBVecSaB4oFkeJEKaiO+Bdca6Xj77+8b1bBCwOxYhBiXTln9iQ7PDZmo6Dw4Ep2tMRsoTR8pugDYwS7KU7nLXSIZt4pPreY0rgzAdixGJDScIwCW8JbKduAGQc9/g3SZrv0kNGHzX1r1EJ9QFvFHnYv2m35z1+3Hf218c7tsPGZl9wQGC7Geof4khoe2FBqLZirVyWotx9tp9uOdJwG1PRTPkoh/hHsG2gIRjA==
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIURjdW2kAT5w+4JYb7gysgxu59OOUwDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDA0MDQxNDE0NDRaFw0yNDA3MDMxNDE0NDRaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDT5VPOae6/v6eyaJej84BbtiWjGMwP97SklHN8sUlbyVWZSQIqxUj8qRO+Tu/6C8ZkrBG+aftMN9ht/52z1foeqomR2Xw0G8Qwrug/5OkFq07fY8RUqxQfrVelSrvaUprH5k07NJm6z8LvDd8lwWhYgOMQ/j3iHE0VG1xITSi2N96NCtP75owdnnDXq+1Ebm3/2zohiTFTXVQTOfiaQjiwqafXf6FuPoKpXIGiHcK+zeGp9lF4b+EN111MlKl9kzddACrPuQRO1ZZZBiwSyFu/pS8Af0lEZHIbD0i7t5A1mhcU4zPdTj8QRftJnY4fyrc8L2BAemYh6ibSIeWNrswStCWl4iBGdF8qyXtpqxWo2Ehnhn8fA4ZJZHb16nU+p8S8R2GRn3WOZ8yfUDEHQAQh2JzW77lNB1iPLtpn7QlGIz7WW/G6BHRTucmhcDVDdQAmhYYYTwQIibGmgCo1Qrj6iJazOtAIa9s68259YCjPg228sb2Ceou48G+KJyLBHp9bDf6ZigzRY6zxSvjVzceIJFcDUEnXU0hNXyb5eJbKZfRe05iY+diCSnmimSxed7t1i539yrXMRMB0ZIaAmq74y9BMh9Uxju6Q48J/6KUv5c//c4XG17XiWFuniZe8dxAY18rVdRW67T7y0IWrQqg141Jh8GQKddL3++TfkgD1fQIDAQABo0UwQzAdBgNVHQ4EFgQUBlbnwIyOQz9FgCCM3aYszVdboJcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBACXOiBPNeSnIoHdps4NgPqzq8r06EsIY27oHnCpi+V1g/IsHD6BK4SG3Blu5eQcGfISyYBKVd29Zelpjo14D+jT+SnsL/ty4Gi4jacghIsdOuZKExHUQPcshEQUcas287xAhnQZWXciRb2U+Sh/mZwGbbrs3n6RSPLUysxxEihSaTAJi38Ob+IGPjzlM9FZNXTRIkuQQvoeb+HruP+734+p6tWQH3zGrq+DVAaY8xN3eyPig7Nf3PKQR3UxZrPLtMXovnIu5QUx278f87T2FaEWQ/eECIRNUJOk3xbqmsMMQE/TyppiFg3YjTGFsEEZiXE2gpuhFeBxcyZJx9uyF7ved1K0jW6sSM358W5tVMvpgkpAAGLnGyDIldztjgeEYiAI1wGN7ntXnHzvIK2+3yralSS4nsKcuJMJje0tF7LXQBQ3qPEbJGRUZePWFUxOo8/FWCMoc7+4aTMqflipOBVPpdAkCyd1L/ZTab+oNQRRtqqS+w3CdGFKmQ2cFf+X4zTgpL++H1UDqPThodn8VC9/qhfqJisfxJR26ZdddrjRbcBS5NE8+A7xLZNiioNqwGkWVCQt5u6kyuCqm/UMkYWLI3hToP/+Rfdkv4vmOO2Lr5m5xzBdyoBF746jn15WB5PeNst+28SARlywyxd8QrmPBM2sv8vxuUSlNmOlt7yTW
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="es-admin" password="GLn1KYvjYUN67K7m371PYnguWan7Q0mY";'
);

CREATE TEMPORARY VIEW `TP and TRT FILTER` AS
SELECT * FROM `BPI012Z`
WHERE `C_TP_MSG` = '1200' AND C_TRT_MSG = '1' AND CHAR_LENGTH(E_RX_MSG_IN) > 0 AND CHAR_LENGTH(E_TX_MSG_OUT) > 0 ;

CREATE TEMPORARY VIEW `filter_1` AS
SELECT * FROM `BPI013Z`
WHERE CHAR_LENGTH(E_RX_MSG_IN) > 0 AND CHAR_LENGTH(E_TX_MSG_OUT) > 0 ;

CREATE TEMPORARY VIEW `12Z TO Timestamps` AS
SELECT
    `S_PREF_PK_OP`                 AS `S_PREF_PK_OP`,
    `C_TP_MSG`                     AS `C_TP_MSG`,
    `C_TRT_MSG`                    AS `C_TRT_MSG`,
    `E_RX_MSG_IN`                  AS `E_RX_MSG_IN`,
    `E_TX_MSG_OUT`                 AS `E_TX_MSG_OUT`,
    `event_time`                   AS `event_time`,
    TO_TIMESTAMP(`E_TX_MSG_OUT`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_TX_MSG_OUT_TIMESTMP_12`,
    TO_TIMESTAMP(`E_RX_MSG_IN`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_RX_MSG_IN_TIMESTMP_12`,
    TO_DATE(`E_RX_MSG_IN`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_RX_MSG_IN_DATE_12`,
    TO_DATE(`E_TX_MSG_OUT`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_TX_MSG_OUT_DATE_12`
FROM `TP and TRT FILTER`;

CREATE TEMPORARY VIEW `13Z To Timestamps` AS
SELECT
    `S_PREF_PK_OP`                 AS `S_PREF_PK_OP`,
    `C_TP_MSG`                     AS `C_TP_MSG`,
    `C_TRT_MSG`                    AS `C_TRT_MSG`,
    `E_RX_MSG_IN`                  AS `E_RX_MSG_IN`,
    `E_TX_MSG_OUT`                 AS `E_TX_MSG_OUT`,
    `event_time`                   AS `event_time`,
    TO_TIMESTAMP(`E_TX_MSG_OUT`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_TX_MSG_OUT_13_TIMESTMP`,
    TO_TIMESTAMP(`E_RX_MSG_IN`, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_RX_MSG_IN_13_TIMESTMP`,
    TO_DATE (E_RX_MSG_IN, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_RX_MSG_IN_13_DATE`,
    TO_DATE (E_TX_MSG_OUT, 'yyyy-MM-dd-HH.mm.ss.SSSSSS') AS `E_TX_MSG_OUT_13_DATE`
FROM `filter_1`;

CREATE TEMPORARY VIEW `10Z JOIN 12Z` AS
SELECT
    `BPI010Z`.`S_PREF_PK_OP`       AS `S_PREF_PK_OP_10`,
    `BPI010Z`.`C_BNC_PGTC`         AS `C_BNC_PGTC`,
    `BPI010Z`.`C_BNC_EMTT`         AS `C_BNC_EMTT`,
    `BPI010Z`.`C_BNC_RGLM`         AS `C_BNC_RGLM`,
    `BPI010Z`.`C_ST_RCH_GT`        AS `C_ST_RCH_GT`,
    `BPI010Z`.`C_ST_RCH_EMTT`      AS `C_ST_RCH_EMTT`,
    `BPI010Z`.`C_APPRVL`           AS `C_APPRVL`,
    `BPI010Z`.`V_OP_AUTZ`          AS `V_OP_AUTZ`,
    `BPI010Z`.`event_time`         AS `event_time_10`,
    `12Z TO Timestamps`.`S_PREF_PK_OP` AS `S_PREF_PK_OP`,
    `12Z TO Timestamps`.`E_RX_MSG_IN_TIMESTMP_12` AS `E_RX_MSG_IN_TIMESTMP_12`,
    `12Z TO Timestamps`.`E_TX_MSG_OUT_TIMESTMP_12` AS `E_TX_MSG_OUT_TIMESTMP_12`,
    `12Z TO Timestamps`.`event_time` AS `event_time`,
    `12Z TO Timestamps`.`E_TX_MSG_OUT` AS `E_TX_MSG_OUT`,
    `12Z TO Timestamps`.`E_RX_MSG_IN` AS `E_RX_MSG_IN`,
    `12Z TO Timestamps`.`C_TRT_MSG` AS `C_TRT_MSG`,
    `12Z TO Timestamps`.`C_TP_MSG` AS `C_TP_MSG`,
    `12Z TO Timestamps`.`E_RX_MSG_IN_DATE_12` AS `E_RX_MSG_IN_DATE_12`,
    `12Z TO Timestamps`.`E_TX_MSG_OUT_DATE_12` AS `E_TX_MSG_OUT_DATE_12`
FROM `BPI010Z` JOIN `12Z TO Timestamps` ON
    `BPI010Z`.`S_PREF_PK_OP` = `12Z TO Timestamps`.`S_PREF_PK_OP`
WHERE `12Z TO Timestamps`.`event_time`
    BETWEEN `BPI010Z`.`event_time` - INTERVAL '30' MINUTE
    AND `BPI010Z`.`event_time` + INTERVAL '30' MINUTE;

CREATE TEMPORARY VIEW `1210 JOIN 13` AS
SELECT
    `10Z JOIN 12Z`.`C_BNC_EMTT`    AS `C_BNC_EMTT`,
    `10Z JOIN 12Z`.`C_BNC_RGLM`    AS `C_BNC_RGLM`,
    `10Z JOIN 12Z`.`C_BNC_PGTC`    AS `C_BNC_PGTC`,
    `10Z JOIN 12Z`.`C_ST_RCH_GT`   AS `C_ST_RCH_GT`,
    `10Z JOIN 12Z`.`C_ST_RCH_EMTT` AS `C_ST_RCH_EMTT`,
    `10Z JOIN 12Z`.`C_APPRVL`      AS `C_APPRVL`,
    `10Z JOIN 12Z`.`S_PREF_PK_OP`  AS `S_PREF_PK_OP`,
    `10Z JOIN 12Z`.`E_RX_MSG_IN`   AS `E_RX_MSG_IN_12`,
    `10Z JOIN 12Z`.`E_TX_MSG_OUT`  AS `E_TX_MSG_OUT_12`,
    `10Z JOIN 12Z`.`E_RX_MSG_IN_TIMESTMP_12` AS `E_RX_MSG_IN_TIMESTMP_12`,
    `10Z JOIN 12Z`.`E_TX_MSG_OUT_TIMESTMP_12` AS `E_TX_MSG_OUT_TIMESTMP_12`,
    `13Z To Timestamps`.`E_RX_MSG_IN` AS `E_RX_MSG_IN_13`,
    `13Z To Timestamps`.`E_TX_MSG_OUT` AS `E_TX_MSG_OUT_13`,
    `13Z To Timestamps`.`E_RX_MSG_IN_13_TIMESTMP` AS `E_RX_MSG_IN_TIMESTMP_13`,
    `13Z To Timestamps`.`E_TX_MSG_OUT_13_TIMESTMP` AS `E_TX_MSG_OUT_TIMESTMP_13`,
    `13Z To Timestamps`.`E_RX_MSG_IN_13_DATE` AS `E_RX_MSG_IN_13_DATE`,
    `13Z To Timestamps`.`E_TX_MSG_OUT_13_DATE` AS `E_TX_MSG_OUT_13_DATE`,
    `10Z JOIN 12Z`.`E_RX_MSG_IN_DATE_12` AS `E_RX_MSG_IN_DATE_12`,
    `10Z JOIN 12Z`.`E_TX_MSG_OUT_DATE_12` AS `E_TX_MSG_OUT_DATE_12`,
    `10Z JOIN 12Z`.`V_OP_AUTZ`     AS `V_OP_AUTZ`
FROM `10Z JOIN 12Z` JOIN `13Z To Timestamps` ON
    `10Z JOIN 12Z`.`S_PREF_PK_OP_10` = `13Z To Timestamps`.`S_PREF_PK_OP`
WHERE `13Z To Timestamps`.`event_time`
    BETWEEN `10Z JOIN 12Z`.`event_time` - INTERVAL '30' MINUTE
    AND `10Z JOIN 12Z`.`event_time` + INTERVAL '30' MINUTE;

CREATE TEMPORARY VIEW `Timestamps to microseconds` AS
SELECT
    `C_BNC_EMTT`                   AS `C_BNC_EMTT`,
    `C_BNC_RGLM`                   AS `C_BNC_RGLM`,
    `C_BNC_PGTC`                   AS `C_BNC_PGTC`,
    `C_ST_RCH_GT`                  AS `C_ST_RCH_GT`,
    `C_ST_RCH_EMTT`                AS `C_ST_RCH_EMTT`,
    `C_APPRVL`                     AS `C_APPRVL`,
    `S_PREF_PK_OP`                 AS `S_PREF_PK_OP`,
    `E_RX_MSG_IN_12`               AS `E_RX_MSG_IN_12`,
    `E_TX_MSG_OUT_12`              AS `E_TX_MSG_OUT_12`,
    `E_RX_MSG_IN_TIMESTMP_12`      AS `E_RX_MSG_IN_TIMESTMP_12`,
    `E_TX_MSG_OUT_TIMESTMP_12`     AS `E_TX_MSG_OUT_TIMESTMP_12`,
    `E_RX_MSG_IN_13`               AS `E_RX_MSG_IN_13`,
    `E_TX_MSG_OUT_13`              AS `E_TX_MSG_OUT_13`,
    `E_RX_MSG_IN_TIMESTMP_13`      AS `E_RX_MSG_IN_TIMESTMP_13`,
    `E_TX_MSG_OUT_TIMESTMP_13`     AS `E_TX_MSG_OUT_TIMESTMP_13`,
    `E_RX_MSG_IN_13_DATE`          AS `E_RX_MSG_IN_13_DATE`,
    `E_TX_MSG_OUT_13_DATE`         AS `E_TX_MSG_OUT_13_DATE`,
    `E_RX_MSG_IN_DATE_12`          AS `E_RX_MSG_IN_DATE_12`,
    `E_TX_MSG_OUT_DATE_12`         AS `E_TX_MSG_OUT_DATE_12`,
    (((YEAR(E_TX_MSG_OUT_DATE_12) * 31556926 ) + (MONTH(E_TX_MSG_OUT_DATE_12) * 2629743) + (DAYOFMONTH(E_TX_MSG_OUT_DATE_12) * 86400) + (HOUR(E_TX_MSG_OUT_TIMESTMP_12) * 3600) + (MINUTE(E_TX_MSG_OUT_TIMESTMP_12) * 60) + (SECOND(E_TX_MSG_OUT_TIMESTMP_12))) * 1000000 )+ (CAST (SUBSTRING(`E_TX_MSG_OUT_12` FROM 21) AS BIGINT))
 AS `E_TX_MSG_OUT_12_MICROSECONDS`,
    (((YEAR(E_RX_MSG_IN_DATE_12) * 31556926 ) + (MONTH(E_RX_MSG_IN_DATE_12) * 2629743) + (DAYOFMONTH(E_RX_MSG_IN_DATE_12) * 86400) + (HOUR(E_RX_MSG_IN_TIMESTMP_12) * 3600) + (MINUTE(E_RX_MSG_IN_TIMESTMP_12) * 60) + (SECOND(E_RX_MSG_IN_TIMESTMP_12))) * 1000000) + (CAST (SUBSTRING(`E_RX_MSG_IN_12` FROM 21) AS BIGINT))  AS `E_RX_MSG_IN_12_MICROSECONDS`,
    (((YEAR( E_RX_MSG_IN_13_DATE) * 31556926 ) + (MONTH( E_RX_MSG_IN_13_DATE) * 2629743) + (DAYOFMONTH( E_RX_MSG_IN_13_DATE) * 86400) + (HOUR(E_RX_MSG_IN_TIMESTMP_13) * 3600) + (MINUTE(E_RX_MSG_IN_TIMESTMP_13) * 60) + (SECOND(E_RX_MSG_IN_TIMESTMP_13))) * 1000000) + (CAST (SUBSTRING(`E_RX_MSG_IN_13` FROM 21) AS BIGINT)) AS `E_RX_MSG_IN_13_MICROSECONDS`,
    (((YEAR(E_TX_MSG_OUT_13_DATE) * 31556926 ) + (MONTH(E_TX_MSG_OUT_13_DATE) * 2629743) + (DAYOFMONTH(E_TX_MSG_OUT_13_DATE) * 86400) + (HOUR(E_TX_MSG_OUT_TIMESTMP_13) * 3600) + (MINUTE(E_TX_MSG_OUT_TIMESTMP_13) * 60) + (SECOND(E_TX_MSG_OUT_TIMESTMP_13))) * 1000000) + (CAST (SUBSTRING(`E_TX_MSG_OUT_13` FROM 21) AS BIGINT))  AS `E_TX_MSG_OUT_13_MICROSECONDS`,
    CAST(IF (C_APPRVL  = '', IF(C_ST_RCH_GT   = '1', 'TimeOut', IF(C_ST_RCH_GT   = '2' AND C_ST_RCH_EMTT = '2', 'Negata Issuer', IF(C_ST_RCH_GT   = '2' AND C_ST_RCH_EMTT = '', 'Negata Interna', 'AUTORIZZATA'))), 'AUTORIZZATA')
 AS STRING) AS `ESITO`,
    `V_OP_AUTZ`                    AS `V_OP_AUTZ`
FROM `1210 JOIN 13`;

CREATE TEMPORARY VIEW `Delay Calculation` AS
SELECT
    `C_BNC_EMTT`                   AS `C_BNC_EMTT`,
    `C_BNC_RGLM`                   AS `C_BNC_RGLM`,
    `C_BNC_PGTC`                   AS `C_BNC_PGTC`,
    `C_ST_RCH_GT`                  AS `C_ST_RCH_GT`,
    `C_ST_RCH_EMTT`                AS `C_ST_RCH_EMTT`,
    `ESITO`                        AS `ESITO`,
    `S_PREF_PK_OP`                 AS `S_PREF_PK_OP`,
    E_TX_MSG_OUT_13_MICROSECONDS - E_RX_MSG_IN_12_MICROSECONDS AS `DELAY1200`,
    E_TX_MSG_OUT_12_MICROSECONDS - E_RX_MSG_IN_13_MICROSECONDS AS `DELAY1210`,
    `V_OP_AUTZ`                    AS `V_OP_AUTZ`
FROM `Timestamps to microseconds`;

CREATE TABLE `sink_1`
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
    `V_OP_AUTZ`                    STRING
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.PRIMO.OUTPUT',
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
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="es-admin" password="GLn1KYvjYUN67K7m371PYnguWan7Q0mY";'
);

INSERT INTO `sink_1` SELECT * FROM `Delay Calculation`;
-- -------------------------------------------
