-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T08:52:50.687+0000
-- flowId: 972b18ca-9884-49a7-82cb-551a1b927163
-- flowName: Prima Vista - V2 - prima join
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
    'properties.bootstrap.servers' = 'my-kafka-cluster-kafka-bootstrap.event-automation.svc:9095',
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
MIIFLTCCAxWgAwIBAgIUMRKjzXyad5J3vXhvAzNa4x40j98wDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDAzMDYxMDQ1MTZaFw0yNDA2MDQxMDQ1MTZaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVnqkuNMyStDBRwUQ6qR9LRrASvxKStYqUixsBQJhcb/qaK0lzATOQXweZZ1vbyTnLh3EuOPc+ty6vio5cK+x7LynSyF76YdYl3uQEh4sBXdgV3T4IuGT08mtEzzyCaC8KYcm8EQ0pfWHI72Iu/JngJfkYGlASTVeH7bsLpABIP4WP7baOgMWbYBzXOcODLtMAK+hibN7Mg0u4nQOrzE9R1aLgG2Y1RORtb09y8bd3i2UPbxNTvdEbCQsmbfrQX3c0JqxrZy432LP58ypvV0gzEAj9RrV48wps9s3ZrejnPdtEfF3Sx6c1s/+MqTK9uVmYYCBTUQ5unrQvUy/Y5axtRHFDKuxFLER7Jf5OUlLWnyppdV//4L7ogr3gxUYULSpAZmr6JzjJsm67JrIDRnSRAycFMjGyluh453DewObissHuo6u8VMPWr+kjhqOFaNXRx408/SZOSWY3tJHzJ/gbjkFPYYnbLy6u1bjMEw+WFjB1f75VQyz3bNhJ0TODbj0VZLwbC2AN6rX37fMbUwFlgTfcbieJ03GdEUGpKYIZlJ5zyzj3RZxrl1HeU+6gZa3FQ+pP1Dvvf7G5nrp4hKGsX/iO1DPGYFbdNldgfircIVW7fbEHubQilNR45K7WuOD2L9/0xkLScRRpuHe2LUf0NtOqngq3Vpoh1ztLyfEr/wIDAQABo0UwQzAdBgNVHQ4EFgQU1oJJfYQkyzx7c0VavlxO5yPKwUcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBAJnnZcLeYSI54gYEG8cbhR5XFAXl1CX5whwdZPnYKV+EcVDxqdCeB+WZwQ5D8G4n1BP2n6mot1EPuSAwvhPJVqfJnZTiTI7QuB5nomkcRgZtGAiJJQpfrZaK4TgRlE0zb5+ICezIig+hIzEjCGxAYnV2Ag+9x27lmhA+ErEw6HcxwkZTGAPAJzm2gvWTi1Estqy6ar02k3bC7BOah1syrqsMTxIQ4zJ5FWtj5wDx89rY4zfw3xNv5VHdeGEnH1BfheAocrn2+4uLGzG77ee7Er0K7E4C1KQCXOXFmFUCWmUAhtZqyXTY/KJOhvBYfjruF9IN886WvfmTmmIYF5nVut/4CU5Jaxq/K+EdhftP8+etriiKDJk3vIMDHKYC/0U4nUpAVHbtOy4OHespkA+0+5nV46xVgQMZ96FkGzf2nG8XohhOIFNOtuO4BV3cMKXGXabYm+LfL8t6LEvUXRdqQK5nw2lFVh0Rpl5UWv5J2fQdDdPlAEggS+SWu+Ijh01/+JIVCGZMLmsR+eqeZxjSAmRm0Med5EylQLYeElaKTp2a6OzgId/Z1Mi15TsWSnOKai6nwOCoAeDM6KKhLNKdsQENGgma9Ba0erWIkGS5aQX6leWuqKwp+8JGcVmaSnHM0U6RO7vbbGmVfmoOJJsypuOtNFNhLieD9qCf6UIcy0K2
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
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
    'properties.bootstrap.servers' = 'my-kafka-cluster-kafka-bootstrap.event-automation.svc:9095',
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
MIIFLTCCAxWgAwIBAgIUMRKjzXyad5J3vXhvAzNa4x40j98wDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDAzMDYxMDQ1MTZaFw0yNDA2MDQxMDQ1MTZaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVnqkuNMyStDBRwUQ6qR9LRrASvxKStYqUixsBQJhcb/qaK0lzATOQXweZZ1vbyTnLh3EuOPc+ty6vio5cK+x7LynSyF76YdYl3uQEh4sBXdgV3T4IuGT08mtEzzyCaC8KYcm8EQ0pfWHI72Iu/JngJfkYGlASTVeH7bsLpABIP4WP7baOgMWbYBzXOcODLtMAK+hibN7Mg0u4nQOrzE9R1aLgG2Y1RORtb09y8bd3i2UPbxNTvdEbCQsmbfrQX3c0JqxrZy432LP58ypvV0gzEAj9RrV48wps9s3ZrejnPdtEfF3Sx6c1s/+MqTK9uVmYYCBTUQ5unrQvUy/Y5axtRHFDKuxFLER7Jf5OUlLWnyppdV//4L7ogr3gxUYULSpAZmr6JzjJsm67JrIDRnSRAycFMjGyluh453DewObissHuo6u8VMPWr+kjhqOFaNXRx408/SZOSWY3tJHzJ/gbjkFPYYnbLy6u1bjMEw+WFjB1f75VQyz3bNhJ0TODbj0VZLwbC2AN6rX37fMbUwFlgTfcbieJ03GdEUGpKYIZlJ5zyzj3RZxrl1HeU+6gZa3FQ+pP1Dvvf7G5nrp4hKGsX/iO1DPGYFbdNldgfircIVW7fbEHubQilNR45K7WuOD2L9/0xkLScRRpuHe2LUf0NtOqngq3Vpoh1ztLyfEr/wIDAQABo0UwQzAdBgNVHQ4EFgQU1oJJfYQkyzx7c0VavlxO5yPKwUcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBAJnnZcLeYSI54gYEG8cbhR5XFAXl1CX5whwdZPnYKV+EcVDxqdCeB+WZwQ5D8G4n1BP2n6mot1EPuSAwvhPJVqfJnZTiTI7QuB5nomkcRgZtGAiJJQpfrZaK4TgRlE0zb5+ICezIig+hIzEjCGxAYnV2Ag+9x27lmhA+ErEw6HcxwkZTGAPAJzm2gvWTi1Estqy6ar02k3bC7BOah1syrqsMTxIQ4zJ5FWtj5wDx89rY4zfw3xNv5VHdeGEnH1BfheAocrn2+4uLGzG77ee7Er0K7E4C1KQCXOXFmFUCWmUAhtZqyXTY/KJOhvBYfjruF9IN886WvfmTmmIYF5nVut/4CU5Jaxq/K+EdhftP8+etriiKDJk3vIMDHKYC/0U4nUpAVHbtOy4OHespkA+0+5nV46xVgQMZ96FkGzf2nG8XohhOIFNOtuO4BV3cMKXGXabYm+LfL8t6LEvUXRdqQK5nw2lFVh0Rpl5UWv5J2fQdDdPlAEggS+SWu+Ijh01/+JIVCGZMLmsR+eqeZxjSAmRm0Med5EylQLYeElaKTp2a6OzgId/Z1Mi15TsWSnOKai6nwOCoAeDM6KKhLNKdsQENGgma9Ba0erWIkGS5aQX6leWuqKwp+8JGcVmaSnHM0U6RO7vbbGmVfmoOJJsypuOtNFNhLieD9qCf6UIcy0K2
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
);

CREATE TEMPORARY VIEW `TP and TRT FILTER` AS
SELECT * FROM `BPI012Z`
WHERE `C_TP_MSG` = '1200' AND C_TRT_MSG = '1' AND CHAR_LENGTH(E_RX_MSG_IN) > 0 AND CHAR_LENGTH(E_TX_MSG_OUT) > 0 ;

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
    `BPI010Z`.`S_PREF_PK_OP` LIKE `12Z TO Timestamps`.`S_PREF_PK_OP`
WHERE `12Z TO Timestamps`.`event_time`
    BETWEEN `BPI010Z`.`event_time` - INTERVAL '30' MINUTE
    AND `BPI010Z`.`event_time` + INTERVAL '30' MINUTE;

CREATE TABLE `sink_1`
(
    `S_PREF_PK_OP_10`              STRING,
    `C_BNC_PGTC`                   STRING,
    `C_BNC_EMTT`                   STRING,
    `C_BNC_RGLM`                   STRING,
    `C_ST_RCH_GT`                  STRING,
    `C_ST_RCH_EMTT`                STRING,
    `C_APPRVL`                     STRING,
    `V_OP_AUTZ`                    STRING,
    `event_time_10`                TIMESTAMP(6),
    `S_PREF_PK_OP`                 STRING,
    `E_RX_MSG_IN_TIMESTMP_12`      TIMESTAMP(3),
    `E_TX_MSG_OUT_TIMESTMP_12`     TIMESTAMP(3),
    `event_time`                   TIMESTAMP(6),
    `E_TX_MSG_OUT`                 STRING,
    `E_RX_MSG_IN`                  STRING,
    `C_TRT_MSG`                    STRING,
    `C_TP_MSG`                     STRING,
    `E_RX_MSG_IN_DATE_12`          DATE,
    `E_TX_MSG_OUT_DATE_12`         DATE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.PRIMO.OUTPUT',
    'properties.bootstrap.servers' = 'my-kafka-cluster-kafka-bootstrap.event-automation.svc:9095',
    'scan.startup.mode' = 'earliest-offset',
    'format' = 'json',
    'properties.security.protocol' = 'SASL_SSL',
    'properties.sasl.mechanism' = 'SCRAM-SHA-512',
    'properties.ssl.truststore.type' = 'PEM',
    'properties.tls.pemChainIncluded' = 'false',
    'properties.ssl.endpoint.identification.algorithm' = '',
    'properties.ssl.truststore.certificates' = '-----BEGIN CERTIFICATE-----
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
-----END CERTIFICATE-----
,-----BEGIN CERTIFICATE-----
MIIFLTCCAxWgAwIBAgIUMRKjzXyad5J3vXhvAzNa4x40j98wDQYJKoZIhvcNAQENBQAwLTETMBEGA1UECgwKaW8uc3RyaW16aTEWMBQGA1UEAwwNY2x1c3Rlci1jYSB2MDAeFw0yNDAzMDYxMDQ1MTZaFw0yNDA2MDQxMDQ1MTZaMC0xEzARBgNVBAoMCmlvLnN0cmltemkxFjAUBgNVBAMMDWNsdXN0ZXItY2EgdjAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVnqkuNMyStDBRwUQ6qR9LRrASvxKStYqUixsBQJhcb/qaK0lzATOQXweZZ1vbyTnLh3EuOPc+ty6vio5cK+x7LynSyF76YdYl3uQEh4sBXdgV3T4IuGT08mtEzzyCaC8KYcm8EQ0pfWHI72Iu/JngJfkYGlASTVeH7bsLpABIP4WP7baOgMWbYBzXOcODLtMAK+hibN7Mg0u4nQOrzE9R1aLgG2Y1RORtb09y8bd3i2UPbxNTvdEbCQsmbfrQX3c0JqxrZy432LP58ypvV0gzEAj9RrV48wps9s3ZrejnPdtEfF3Sx6c1s/+MqTK9uVmYYCBTUQ5unrQvUy/Y5axtRHFDKuxFLER7Jf5OUlLWnyppdV//4L7ogr3gxUYULSpAZmr6JzjJsm67JrIDRnSRAycFMjGyluh453DewObissHuo6u8VMPWr+kjhqOFaNXRx408/SZOSWY3tJHzJ/gbjkFPYYnbLy6u1bjMEw+WFjB1f75VQyz3bNhJ0TODbj0VZLwbC2AN6rX37fMbUwFlgTfcbieJ03GdEUGpKYIZlJ5zyzj3RZxrl1HeU+6gZa3FQ+pP1Dvvf7G5nrp4hKGsX/iO1DPGYFbdNldgfircIVW7fbEHubQilNR45K7WuOD2L9/0xkLScRRpuHe2LUf0NtOqngq3Vpoh1ztLyfEr/wIDAQABo0UwQzAdBgNVHQ4EFgQU1oJJfYQkyzx7c0VavlxO5yPKwUcwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMCAQYwDQYJKoZIhvcNAQENBQADggIBAJnnZcLeYSI54gYEG8cbhR5XFAXl1CX5whwdZPnYKV+EcVDxqdCeB+WZwQ5D8G4n1BP2n6mot1EPuSAwvhPJVqfJnZTiTI7QuB5nomkcRgZtGAiJJQpfrZaK4TgRlE0zb5+ICezIig+hIzEjCGxAYnV2Ag+9x27lmhA+ErEw6HcxwkZTGAPAJzm2gvWTi1Estqy6ar02k3bC7BOah1syrqsMTxIQ4zJ5FWtj5wDx89rY4zfw3xNv5VHdeGEnH1BfheAocrn2+4uLGzG77ee7Er0K7E4C1KQCXOXFmFUCWmUAhtZqyXTY/KJOhvBYfjruF9IN886WvfmTmmIYF5nVut/4CU5Jaxq/K+EdhftP8+etriiKDJk3vIMDHKYC/0U4nUpAVHbtOy4OHespkA+0+5nV46xVgQMZ96FkGzf2nG8XohhOIFNOtuO4BV3cMKXGXabYm+LfL8t6LEvUXRdqQK5nw2lFVh0Rpl5UWv5J2fQdDdPlAEggS+SWu+Ijh01/+JIVCGZMLmsR+eqeZxjSAmRm0Med5EylQLYeElaKTp2a6OzgId/Z1Mi15TsWSnOKai6nwOCoAeDM6KKhLNKdsQENGgma9Ba0erWIkGS5aQX6leWuqKwp+8JGcVmaSnHM0U6RO7vbbGmVfmoOJJsypuOtNFNhLieD9qCf6UIcy0K2
-----END CERTIFICATE-----
',
    'properties.sasl.jaas.config' = 'org.apache.kafka.common.security.scram.ScramLoginModule required username="<username_redacted>" password="<password_redacted>";'
);

INSERT INTO `sink_1` SELECT * FROM `10Z JOIN 12Z`;
-- -------------------------------------------
