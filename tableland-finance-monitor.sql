-- 创建资金流动监控表
CREATE TABLE finance_monitor (
  tx_hash TEXT PRIMARY KEY,
  from_address TEXT,
  value NUMERIC,
  timestamp TIMESTAMP
);