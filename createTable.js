const { connect } = require('@tableland/sdk');

async function createMonitorTable() {
  const tableland = connect({ network: "testnet" });
  const { meta: { name } } = await tableland
    .prepare("CREATE TABLE monitor (id integer, status text, timestamp text);")
    .run();
  console.log(`监控表已创建：${name}`);
}

createMonitorTable();