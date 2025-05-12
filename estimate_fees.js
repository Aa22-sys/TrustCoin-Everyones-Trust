// LayerZero费用预估工具
const { Client } = require('@layerzerolabs/scan-client');

async function estimateFee(dstChainId, payloadSize) {
  const client = new Client('mainnet');
  const quote = await client.quoteMessageFee({
    dstChainId: dstChainId,
    payloadSize: payloadSize,
    payloadType: 'CALL'
  });
  console.log(`目标链ID: ${dstChainId} 预估费用: ${quote.nativeFee} ETH`);
}

// 示例：查询从以太坊到Polygon的1KB数据费用
estimateFee(137, 1024);