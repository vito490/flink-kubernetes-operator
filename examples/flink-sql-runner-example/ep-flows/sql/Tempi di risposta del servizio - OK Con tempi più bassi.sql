-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T13:47:11.529+0000
-- flowId: fa1377e5-ab0a-459e-ae4a-87e844ad3e76
-- flowName: Tempi di risposta del servizio - OK Con tempi più bassi
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
    WATERMARK FOR `event_time` AS `event_time` - INTERVAL '1' MINUTE
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.PRIMO.OUTPUT',
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

CREATE TEMPORARY VIEW `Transazioni OK` AS
SELECT * FROM `source_1`
WHERE ESITO = 'AUTORIZZATA';

CREATE TEMPORARY VIEW `OK Tempi più bassi` AS
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
    `OK Tempi più bassi_topN`      AS `topN`,
    `event_time`                   AS `event_time`
FROM (
SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY `windowStartTime`, `windowEndTime`
        ORDER BY `DELAY1200` ASC
    ) AS `OK Tempi più bassi_topN`
FROM (
SELECT
    *,
    `window_start` AS `windowStartTime`,
    `window_end` AS `windowEndTime`,
    `window_time` AS `windowResultTime`
FROM TABLE (
    TUMBLE( TABLE `Transazioni OK`, DESCRIPTOR(`event_time`), INTERVAL '1' MINUTE )
)
)
) WHERE `OK Tempi più bassi_topN` <= 10;

CREATE TEMPORARY VIEW `Calcolo Media` AS
SELECT
    `AVG_T_BASSI_OK`,
    `INIZIO_INTERVALLO`,
    `FINE_INTERVALLO`
FROM (
SELECT
    AVG(`DELAY1200`) AS `AVG_T_BASSI_OK`,
    `window_start` AS `INIZIO_INTERVALLO`,
    `window_end` AS `FINE_INTERVALLO`
FROM TABLE (
    TUMBLE( TABLE `OK Tempi più bassi`, DESCRIPTOR(`event_time`), INTERVAL '1' MINUTE )
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
    CAST('OK_BASSI' AS STRING)     AS `FLAG`,
    `AVG_T_BASSI_OK`               AS `RESPONSE_TIME`
FROM `Calcolo Media`;

CREATE TABLE `OutPut`
(
    `INIZIO_INTERVALLO`            TIMESTAMP(3),
    `FINE_INTERVALLO`              TIMESTAMP(3),
    `FLAG`                         STRING,
    `RESPONSE_TIME`                BIGINT
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.TEMPI_RISPOSTA',
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

INSERT INTO `OutPut` SELECT * FROM `Set Flag Identificativo`;
-- -------------------------------------------
