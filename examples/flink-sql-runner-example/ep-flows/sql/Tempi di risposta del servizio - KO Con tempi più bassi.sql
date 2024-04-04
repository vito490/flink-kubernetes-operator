-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T13:47:18.892+0000
-- flowId: 9aa8ff3e-b8a1-45a2-83a2-f86a4095a1e2
-- flowName: Tempi di risposta del servizio - KO Con tempi più bassi
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

CREATE TEMPORARY VIEW `Transazioni KO` AS
SELECT * FROM `source_1`
WHERE ESITO NOT LIKE 'AUTORIZZATA';

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
    TUMBLE( TABLE `Transazioni KO`, DESCRIPTOR(`event_time`), INTERVAL '1' MINUTE )
)
)
) WHERE `OK Tempi più bassi_topN` <= 10;

CREATE TEMPORARY VIEW `Calcolo Media` AS
SELECT
    `RESPONSE_TIME`,
    `INIZIO_INTERVALLO`,
    `FINE_INTERVALLO`
FROM (
SELECT
    AVG(`DELAY1200`) AS `RESPONSE_TIME`,
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
    CAST('KO_BASSI' AS STRING)     AS `FLAG`,
    `RESPONSE_TIME`                AS `RESPONSE_TIME`
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
