# TokenV2Code
 Description of the Transition of Bas token V1 to Bas token V2 alongside all relevant code

 Bas token v1 is currently in circulation with all liquidity on Pancakeswap V2. 

 The BAS v1 Token has the following issues:

- Admin access to IncludeInRewards and ExcludeFromRewards functions allows for admin wallet to dilute overall token supply. This issue occured once over a year ago and was resolved however the underlying security issue is still present.
- Transfers are currently occuring without redistribution, however the rewards logic is ingrained within the transfer function, check line 822 of TokenV1.sol, This function ends up calling
a series of unnecessary functions and performing numerous write operations that are costing users alot of unnecessary gas.
- Tokenomics rearranging, Due to the narrowing down in scope we will reduce the overall supply from 100 million to 75 million, we shall also consolidate a number of wallets into a single
wallet. Please note no holder wallets will be touched, these are only our own multisigs and team tokens.


 Links:

 Token: https://bscscan.com/address/0x8ddeec6b677c7c552c9f3563b99e4ff90b862ebc#code
 LP: https://bscscan.com/address/0xb5c73191e68d99fcca64bec69a89998f73c5a4a9
 Deployer Address: 0x60D8E24d87F765e5b6F07d83f7Ff53c99e5cCe9a

 Bas v1 Supply in LP: 9.555 mil https://bscscan.com/address/0xb5c73191e68d99fcca64bec69a89998f73c5a4a9
 BnB Supply in LP: 1089
 Current Price: 0.035c

 Circulating Supply

 100 Million total Supply

 PCS LP = 9,555,000
 Wallets to consolidate = 42,055,094 + 424,663 + 11,965,344 = 54,445,101

 Tokens in holder hands = 35,999,899

 This means that when minting the new token, we need to airdrop 35,999,899 tokens back to holders that aren't in the consolidated wallets list.

 We will additionally require logic for the following addresses, this code is included as simple node scripts:

 - LP Farm SC
 - BAS Beta Rewards SC

 Now from the PCS LP and Consolidated Wallets we have:

 9,555,000 + 54,445,101 = 64,000,101 Tokens

 Considering we are reducing supply by 25 million tokens, we will have:

 39,000,101  Basv2Tokens after airdropping the 35,999,899 tokens to old holders.
 The relative percentages are 52% to us and 48% to holders.

 The 39,000,101 Tokens will be split in the following way:

 10,000,000 Tokens will be reserved for Liquidity Adding, As we will be unable to extract 100% of BNB we will likely end up having 9,000,000 Tokens paired with BNB and BUSD in liquidity.
 The remaining 1,000,000 Tokens shall be retained in a separate Multisig for Liquidity Incentives and CEX listings.

 383,020 + 262,457 = 645,477 Tokens will be used to renumerate Beta and LP holders, the tokens are rightfully theirs.
 We shall say 1,000,000 Tokens will be set aside to resolve these issues, after which they will be consolidated into the liquidity incentives multisig

 To this purpose we shall state that 11,000,000 Tokens are set aside to 'reinstate' things are before and ensure everyone retains their fair value.
 The wallet will receive the new LP tax. Wallet activities will be transparent and always go towards providing more liquidity for the token.

With the remaining 28,000,101 Tokens we shall do the following:

3,000,101 Tokens shall be left in the Deployer Wallet controlled by myself (Dan), this is also where the tax will be sent and where marketing expenses will be incurred.

Now with the remaining 25,000,000 Tokens:

7,500,000 Tokens (10%) of supply, will be awarded under a 5 year staking system where rewards are halved each year but done progressively.
The pool will require a 3 month Lock on tokens and be designed to reward long term holders of any size. The pool will go live July 1st 2023.

2,500,000 Tokens (3.33%) of supply shall be used for Beta Rewards programs and P2e programs in an appropriate wallet. Tokens shall be vested here with 500,000 readily available and the other 2 million releasing quarterly over 2 years from Q3 2023 - Q3 2025.

7,500,000 Tokens (10%) of supply shall be transferred to the Company Multisig https://bscscan.com/address/0xfC4A49a6534cD1075C27759818dcd91ef5Ad2838
These tokens will then be redeployed in vesting to match Binance's request.
As the tokens were under a 5 year vesting starting beginning 2022, with quarterly unlocks, we will retain 6 unlocks representing Q1-4 2022 and Q1-2 2023
This means 2,250,000 Tokens will be unlocked, and 5,250,000 will be redeployed to quarterly vesting until end of 2026 for the company.

2,500,000 Tokens (3,33%) of supply shall be used for team members in the following manner:

NFT 1 - 500,000 Tokens vested from Q3 2023 - Q3 2024 1Y 
NFT 2 - 500,000 Tokens vested from Q3 2023 - Q3 2024 1Y 
NFT 3 - 5 1 Year Lock NFTs vested from Q3 2023 - Q3 2024 1Y

1,000,000 Tokens shall remain unlocked in a Team multisig. 


5,000,000 DAO Tokens (6.66%) of supply shall be locked until 2023 EOY (7 months), Upon unlock we shall present the community with a variety of options and
decide what to do from there, tokens may be locked again. These will be locked in a DAO multisig.

This means that upon release we will have:

21,250,000 Tokens locked 28.3%
6,750,000 Tokens Team controlled 9%
9,000,000 Tokens in Liq 12%
2,000,000 Tokens Team controlled towards LP + Resolving problems 2.7%

The other 36,000,000 Tokens will be in holder hands 48%

Comparatively, we go from the current split of:
36% Holders + 9% Liq = 45% Outside team control and 55% Completely unlocked
To
48% Holders + 12% Liq Outside team control
11.7% in Team Control
28.3% Locked


At the end of Y1 vesting, Q3 2024:

5% will be unlocked to holders
5.3% to Team controlled wallets
6.7% to DAO controlled wallet
17% Unlocked of 28.3%

so 11.3% Remains Locked

 Wallets to consolidate:

 https://docs.blockapescissors.com/token-details/smart-contracts-and-multisigs
 Main Wallets:

0xF0487Fa3024e2b8bE8A249782306620b5a3F7192			Team                    
0x89280695259abde078458797c7e1fb4e6d67e172			Farm and Liq            21,957,007
0x51d96079ca93a8d22c3afd5d2eeb4fdbeae13e7a			DAO                     14,672,523
0xf6d691550b67086d12d5d3803b7128387ac3150f			Marketing and Dev       1,902,244
0x70122be58fb991bee0179ed6030392b6f74753ce			OLD Farm and Liq        1,672,456 
0xe6d78ae5be525ff571c9dfc1b4f855bed6db5789			Prize Pool              863,147
0xe6274188c27224c8b97e0d04969472070e89f8e0			Bounties                736,260
0x53c9f39b4e8f6602040191b322dd1b9cba59b7c6          LP Farm SC              262,457 - Fluctuates

                                                    Total                   42,055,094

Other Wallets:

0xc6057D7406Bb40C1642aa803c1EBeaaf981bbEd5          BAS Beta Rewards        383,020 - Fluctuates
0xe8e70e1841f9d574e05f11910499288dE82B568F			COO Multisig            41,643 

                                                    Total                   424,663


Team Vesting                                                             

0xa842574625cb9551b0813f43c20c5bdda29bff3f          Vesting 1               738,609

0x3ff3cc8d6684177fbfc65f006c35befe3a221b48          Vesting 2 (15)          748,449
0xb6173594b97303b8031fa23c74c5f215299124a5
0x97751fadbb92fc9c8cbdc990d434d05974423f44
0x13e5038f8ab8400e550f957597354810866ef9ad
0x19ce1c9457a0c9e2e7808c3e98db5029bde1b5ca
0x64433819d30b656fc2c91b3058803b1fad885f4d
0x4bee4759d9d557ef922c132ab3e33a1c98d313a0
0xaf7ecfe92231d59b17b7c443f91933c4c70fe446
0x994fb7c38f9a2749dd3b3d791f44fef615e1ce0a
0x2c598df964083a343d00088bf1655101483c463c
0x5e407c82d7efa132fe84d2207f6109f89a1c500f
0x854943cc9d97875507dd1376790031dbe33031f4
0xba49f43429ca13dc83221af9cfce669c3d760f15
0x5e5a0a0533e406713ffe3c69b8c231dcd2d423aa
0x9551cf40c8baf8d2780faef421193e83cc8e65c2

                                                    Total                   11,965,344
