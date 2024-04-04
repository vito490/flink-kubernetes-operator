-- -------------------------------------------
-- IBM Event Automation
-- exportedDate: 2024-04-04T13:46:57.056+0000
-- flowId: 543e268f-8f35-44d9-bcc7-e620e7b84b19
-- flowName: Valore Transazioni
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

CREATE TEMPORARY VIEW `Valore transazioni medio e totale` AS
SELECT
    `SOMMA_TRANSAZIONI`,
    `MEDIA_TRANSAZIONI`,
    `ESITO`,
    `INIZIO_INTERVALLO`,
    `FINE_INTERVALLO`
FROM (
SELECT
    SUM(`V_OP_AUTZ`) AS `SOMMA_TRANSAZIONI`,
    AVG(`V_OP_AUTZ`) AS `MEDIA_TRANSAZIONI`,
    `ESITO` AS `ESITO`,
    `window_start` AS `INIZIO_INTERVALLO`,
    `window_end` AS `FINE_INTERVALLO`
FROM TABLE (
    TUMBLE( TABLE `source_1`, DESCRIPTOR(`event_time`), INTERVAL '1' MINUTE )
)
GROUP BY
    `window_start`,
    `window_end`,
    `window_time`,
    `ESITO`
);

CREATE TABLE `Output Valori`
(
    `SOMMA_TRANSAZIONI`            DOUBLE,
    `MEDIA_TRANSAZIONI`            DOUBLE,
    `ESITO`                        STRING,
    `INIZIO_INTERVALLO`            TIMESTAMP(3),
    `FINE_INTERVALLO`              TIMESTAMP(3)
)
WITH (
    'connector' = 'kafka',
    'topic' = 'NEXI.VALORE_TRANSAZIONI',
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

INSERT INTO `Output Valori` SELECT * FROM `Valore transazioni medio e totale`;
-- -------------------------------------------
