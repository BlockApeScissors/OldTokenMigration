# Old Token & Migration to new token
 Description of the Transition of Bas token V1 to Bas token V2, renamed Arcas. 

The code for the new token can be found here:
https://github.com/BlockApeScissors/Arcas-Contracts/blob/main/contracts/Token/BlockApeScissorsToken.sol

 Bas token v1 was previously in circulation with all liquidity on Pancakeswap V2. 

 The BAS v1 Token had the following issues:

- Admin access to IncludeInRewards and ExcludeFromRewards functions allows for admin wallet to dilute overall token supply. This issue occured once over a year ago and was resolved however the underlying security issue is still present.
- Transfers are currently occuring without redistribution, however the rewards logic is ingrained within the transfer function, check line 822 of TokenV1.sol, This function ends up calling a series of unnecessary functions and performing numerous write operations that are costing users alot of unnecessary gas.
- Tokenomics rearranging, Due to the narrowing down in scope we shall also consolidate a number of wallets into a single wallet. Please note no holder wallets will be altered, these are only our own multisigs and team tokens. Additionally all taxes are being removed in order to make the token as cheap as possible to transact with.

The migration process can be found on: https://info.blockapescissors.com/arcas-bas-token-v2/bas-token-migration

Multisender exempt contract address list 
                  
0x89280695259abde078458797c7e1fb4e6d67e172			OLD Farm and Liq        21,957,007
0x51d96079ca93a8d22c3afd5d2eeb4fdbeae13e7a			OLD DAO                 14,672,523
0xf6d691550b67086d12d5d3803b7128387ac3150f			Marketing and Dev       1,902,244
0x70122be58fb991bee0179ed6030392b6f74753ce			OLD Farm and Liq        1,672,456 
0xe6d78ae5be525ff571c9dfc1b4f855bed6db5789			OLD Prize Pool          863,147
0xe6274188c27224c8b97e0d04969472070e89f8e0			OLD Bounties            736,260
0x000000000000000000000000000000000000dEaD          BURN Address            230,317.266978277949619212 BAS
0x21c16FD40E03c4f0746679C410416ef24d853E20          OLD Bas beta rewards    4,503
0x8ddEEc6b677c7c552C9f3563B99e4fF90B862EBc          BAS token contract      3,888
0xe8e70e1841f9d574e05f11910499288dE82B568F			Team Multisig           41,643 
0xa842574625cb9551b0813f43c20c5bdda29bff3f          Team Vesting 1          738,609
0x3ff3cc8d6684177fbfc65f006c35befe3a221b48          Team Vesting 2          748,449
0xb6173594b97303b8031fa23c74c5f215299124a5          Team Vesting 2          748,449
0x97751fadbb92fc9c8cbdc990d434d05974423f44          Team Vesting 2          748,449
0x13e5038f8ab8400e550f957597354810866ef9ad          Team Vesting 2          748,449
0x19ce1c9457a0c9e2e7808c3e98db5029bde1b5ca          Team Vesting 2          748,449
0x64433819d30b656fc2c91b3058803b1fad885f4d          Team Vesting 2          748,449
0x4bee4759d9d557ef922c132ab3e33a1c98d313a0          Team Vesting 2          748,449
0xaf7ecfe92231d59b17b7c443f91933c4c70fe446          Team Vesting 2          748,449
0x994fb7c38f9a2749dd3b3d791f44fef615e1ce0a          Team Vesting 2          748,449
0x2c598df964083a343d00088bf1655101483c463c          Team Vesting 2          748,449
0x5e407c82d7efa132fe84d2207f6109f89a1c500f          Team Vesting 2          748,449   
0x854943cc9d97875507dd1376790031dbe33031f4          Team Vesting 2          748,449
0xba49f43429ca13dc83221af9cfce669c3d760f15          Team Vesting 2          748,449
0x5e5a0a0533e406713ffe3c69b8c231dcd2d423aa          Team Vesting 2          748,449
0x9551cf40c8baf8d2780faef421193e83cc8e65c2          Team Vesting 2          748,449
0xc6057D7406Bb40C1642aa803c1EBeaaf981bbEd5          BAS Beta Rewards        284,720 - Fluctuates
0x53c9f39b4e8f6602040191b322dd1b9cba59b7c6          LP Farm                 51,149 - Fluctuates

                                                    Total                   54,385,207

Additionally, all wallets below 50 BAS tokens were not be airdropped.

Arcas has been deployed on BNB Chain.

BNB Chain Deployment:
https://bscscan.com/address/0xAd0926eCf31719263DC86426024794332d9dD9A3#code

Total Supply:
100,000,000

Decimals:
18

Name:
Arcas

Symbol:
ARCAS

Deployer:
0x60D8E24d87F765e5b6F07d83f7Ff53c99e5cCe9a
