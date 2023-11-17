import 'package:fin_assistant/models/one_news_item.dart';
import 'package:fin_assistant/models/question.dart';

class Constants {
  static final courses = [
    const OneNewsItem(
      imagePath: 'https://images.mktw.net/im-886618/social',
      title: 'The Basics of Day Trading',
      subtitle:
          'Day trading means buying and selling a batch of securities within a day, or even within seconds. It has nothing to do with investing in the traditional sense. It is exploiting the inevitable up-and-down price movements that occur during a trading session.\n\nDay trading is most common in the stock markets and on the foreign exchange (forex) where currencies are traded.\n\nDay traders are typically well-educated in the minutia of trading and tend to be well funded. Many of them add an additional level of risk by using leverage to increase the size of their stakes.',
    ),
    const OneNewsItem(
      imagePath:
          'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg',
      title: 'Why Day Trading Is Controversial',
      subtitle:
          "The profit potential of day trading is an oft-debated topic on Wall Street. Internet day-trading scams have lured amateurs by promising enormous returns in a short period of time.\n\nSome people day-trade without sufficient knowledge. But there are day traders who make a successful living despite—or perhaps because of—the risks.\n\nMany professional money managers and financial advisors shy away from day trading. They argue that, in most cases, the reward does not justify the risk. Moreover, many economists and financial practitioners argue that active trading strategies of any kind tend to underperform a more basic passive index strategy over time especially after fees and taxes are taken into account.",
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:5d6f91e08094b-f65a2bb5cb874ac4b9b5d109110fa35d-resized.jpeg',
      title: 'Sufficient Capital',
      subtitle:
          'Wise day traders use only risk capital that they can afford to lose. This protects them from financial ruin and helps eliminate emotion from their trading decisions.\n\nA large amount of capital is often necessary to capitalize effectively on intraday price movements, which can be in pennies or fractions of a cent.\n\nAdequate cash is required for day traders who intend to use leverage in margin accounts. Volatile market swings can trigger big margin calls on short notice.',
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:808f45bc3094b-1db105867de2f1fc33c8e27e3aa6e63d-resized.jpeg',
      title: 'Day Trading Strategies',
      subtitle:
          "A trader needs to have an edge over the rest of the market. Day traders use any of a number of strategies, including swing trading, arbitrage, and trading news. They refine these strategies until they produce consistent profits and limit their losses.\n\nThere also are some basic rules of day trading that are wise to follow: Pick your trading choices wisely. Plan your entry and exit points in advance and stick to the plan. Identify patterns in the trading activities of your choices in advance.",
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:b1e381586094b-6f3fb861c49dcd275bbe33cde413c818-resized.jpeg',
      title: 'Discipline',
      subtitle:
          "Many day traders end up losing money because they fail to make trades that meet their own criteria. As the saying goes, “Plan the trade and trade the plan.” Success is impossible without discipline.\n\nTo profit, day traders rely heavily on market volatility. A day trader may find a stock attractive if it moves a lot during the day. That could happen for a number of different reasons, including an earnings report, investor sentiment, or even general economic or company news.",
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:6246bbd99094b-08a9e399b6bc4f54cf2c1d95be5711a8-resized.jpeg',
      title: 'Who Makes a Living by Day Trading?',
      subtitle:
          "There are two primary divisions of professional day traders: those who work alone, and/or those who work for a larger institution.\n\nMost day traders who trade for a living work for large players like hedge funds and the proprietary trading desks of banks and financial institutions. These traders have an advantage because they have access to resources such as direct lines to counterparties, a trading desk, large amounts of capital and leverage, and expensive analytical software.",
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:55258edcf094b-d1f7ea1aa23381b8024832a20c7c3563-resized.jpeg',
      title: 'Access to a Trading Desk',
      subtitle:
          "This is usually reserved for traders who work for larger institutions or those who manage large amounts of money.\n\nThe trading or dealing desk provides these traders with instantaneous order execution, which is crucial. For example, when an acquisition is announced, day traders looking at merger arbitrage can place their orders before the rest of the market is able to take advantage of the price differential.",
    ),
    const OneNewsItem(
      imagePath:
          'https://s3.tradingview.com/news/image/tradingview:6b948c116094b-2fc22a4adb8dcf71535b11c65e2b1881-resized.jpeg',
      title: 'Multiple News Sources',
      subtitle:
          "News provides most of the opportunities. It is imperative to be the first to know when something significant happens.\n\nThe typical trading room has access to all of the leading newswires, constant coverage from news organizations, and software that constantly scans news sources for important stories.  ",
    ),
    const OneNewsItem(
      imagePath:
          'https://www.reuters.com/resizer/QCIlLLUiYpQ2B_CxmZ6DTwc3erU=/240x240/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FH7EYAOX4ZLR3CRL3KMYMNRUDU.jpg',
      title: 'How Do I Get Started Day Trading?',
      subtitle:
          "A successful day trader understands the discipline of technical analysis. This is identifying trading opportunities by observing and plotting the patterns of price and volume movement in a stock (or any other investment). The long-term trend shows how the stock has behaved in the past and suggests how it should behave in the immediate future.\n\nTechnical analysis is not usually done with paper and pencil these days. There are software packages that help create charts and graphs for the purpose.\n\nThe day trader also must have a plan in place before making a single trade. Which stocks to trade and what price points are acceptable for buying and selling all must be set in advance. A successful day trader does not leave room for impulse purchases.",
    ),
    const OneNewsItem(
      imagePath:
          'https://www.reuters.com/resizer/lYVxrT98CCFQEd2LWMCpXcLrU4c=/240x240/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/FT544524SJLCNCJL63MR2Y5VSQ.jpg',
      title: 'What Is the First Rule of Day Trading?',
      subtitle:
          "The first rule of day trading is never to hold onto a position when the market closes for the day. Win or lose, sell out.\n\nMost day traders make it a rule never to hold a losing position overnight in the hope that part or all of the losses can be recouped.\n\nFor one thing, brokers have higher margin requirements for overnight trades, and that means additional capital is required.",
    ),
  ];
  static final news = [
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-886599/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title:
          'Deutsche Bank names fixed income veteran Vijayaratna as UK and Ireland CEO',
      subtitle:
          "Deutsche Bank has promoted a fixed income veteran to lead its business in the UK and Ireland, replacing Tiina Lee who left for Citigroup earlier this year.\n\nVathany Vijayaratna is now chief executive for the UK and Ireland at the German lender, it said in a statement announcing her appointment. A 2o-year veteran of Deutsche, she was previously global head of structuring within its fixed income and currencies division, and was most recently head of non-financial risk for its investment bank.\n\nVijayaratna takes the role from Lee, who has now made the switch to lead Citigroup's UK operations after her appointment was announced in July. Lee takes charge of 15,000 UK employees at Citigroup, having spent 26 years at Deutsche Bank, five leading its UK and Ireland operations.",
    ),
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-886611/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title: 'The Fintech Files: Big ambitions meet harsh reality',
      subtitle:
          "It was April 2021. The meme-stock mania was in full swing. Shares in GameStop and AMC were skyrocketing. Institutional investors with deep pockets were trying to get a piece of the firms offering brokerage services.\n\nCalifornia-based investing app Robinhood and Amsterdam-based BUX — known as the European Robinhood — saw interest spike. Tencent, which owns WeChat, backed BUX in a \$80m funding round alongside other major investors.",
    ),
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-886071/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title:
          'Tencent-backed fintech BUX cuts 40% of staff in bid to turn profit',
      subtitle:
          "Amsterdam-based neo-broker BUX has laid off roughly 40% of its workforce amid a funding drought in the fintech sector.\n\nBacked by Tencent, BUX provides brokerage services across Europe and the UK. The firm raised \$80m in April 2021 in a funding round that included Tencent, ABN Amro Ventures and Prosus Ventures.",
    ),
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-886088/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title: 'Leveraged bitcoin trading is coming to Cboe in January',
      subtitle:
          "Crypto investors will be able to trade bitcoin and ether futures on margin in January via Cboe Global Markets, the exchange operator said on 13 November.\n\nWhile fully collateralised futures contracts require traders to put up the entire amount upfront, in margined contracts customers can post just a percentage of the total position before trading. Trading on margin can amplify both gains and losses.",
    ),
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-885248/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title:
          "The City’s post-Brexit battles are far from over. Here’s what you need to know",
      subtitle:
          "Seven and a half years after the UK voted to leave the EU, the City is still trying to figure out a path forward.\n\nFinancial services were left without a deal. An agreement on how regulators would work together gathered dust for years. EU authorities have made plays to bring everything from investment banking and asset management to trading and clearing back to the bloc.\n\nAcross financial services, London's leaders have had to adapt. But where does the landscape sit now? Dive into some must-reads from Financial News below to find out more.",
    ),
    const OneNewsItem(
      imagePath:
          'https://images.fnlondon.com/im-886013/?width=700&size=1.5005861664712778&pixel_ratio=2',
      title:
          'Private debt was supposed to collapse when rates rose. Instead it is everywhere',
      subtitle:
          "Wall Street’s doom-mongers spent years warning that private lenders would be the next bubble to burst when central banks tightened policy. Instead, the funds are becoming even more ubiquitous as companies scramble to refinance debt in a higher interest-rate environment.\n\nTake PetVet Care Centers. The Westport, Connecticut-based company operates 450 veterinary clinics and hospitals across the US and has been owned by private equity giant KKR since 2018. It has been a successful acquisition, but the company is facing a wall of debt maturities that can only be refinanced at higher cost. KKR is providing \$600m of additional equity to ease the burden, while private debt lender Blue Owl Capital will extend PetVet a \$2.3bn senior loan.",
    ),
  ];

  static final questions = [
    const Question(
      'What does the term "Bull Market" refer to in finance?',
      [
        'Rising prices and optimism',
        'Falling prices and pessimism',
        'Stable market conditions',
      ],
      0,
    ),
    const Question(
        'What is a "Blue Chip" stock?',
        [
          'Low-value stocks',
          'High-value stocks of well-established companies',
          'Cryptocurrencies',
        ],
        1),
    const Question(
        'What does IPO stand for in the stock market?',
        [
          'Internal Price Offering',
          'Initial Public Offering',
          'Investor Profit Outlook'
        ],
        1),
    const Question(
      'In the context of trading, what does the acronym ETF stand for?',
      [
        'Electronic Trading Fund',
        'Exchange-Traded Fund',
        'Equity Transfer Fee',
      ],
      1,
    ),
    const Question(
      'What is the primary function of a stop-loss order?',
      [
        'To limit losses by automatically selling a security at a specified price',
        'To maximize profits by holding onto a security indefinitely',
        'To initiate a buy order at a specific price point',
      ],
      0,
    ),
    const Question(
      'What does the term "short selling" involve in trading?',
      [
        'Buying a security with the expectation of rising prices',
        'Selling a security with the expectation of falling prices',
        'Holding onto a security for the long term',
      ],
      1,
    ),
    const Question(
      "What is the significance of the Federal Reserve's interest rate decisions on financial markets?",
      [
        'No impact on financial markets',
        'No impact on financial markets',
        'Affects only the foreign exchange market',
      ],
      1,
    ),
    const Question(
      'What does the term "volatility" refer to in the context of financial markets?',
      [
        'Stability of prices',
        'The degree of variation of a trading price series',
        'Predictability of market movements',
      ],
      1,
    ),
    const Question(
      'What is the role of a market index?',
      [
        'To predict individual stock prices',
        'To measure the performance of a group of stocks',
        'To regulate stock trading hours',
      ],
      1,
    ),
    const Question(
      'What does the P/E ratio (Price-to-Earnings) indicate about a stock?',
      [
        'How much the stock has gained in the past year',
        'The market capitalization of the company',
        "The ratio of the stock's price to its earnings per share",
      ],
      2,
    ),
  ];
  static final extraNew = const OneNewsItem(
    imagePath:
        'https://images.fnlondon.com/im-885956/?width=700&size=1.5005861664712778&pixel_ratio=2',
    title: 'Schroders Greencoat eyes deal for fallen solar group Toucan Energy',
    subtitle:
        "Schroders Greencoat, the infrastructure investor backed by the funds giant, has taken a leading interest in purchasing Toucan Energy after the solar farm operator collapsed last year, according to reports.\n\nKPMG spin-off Interpath Advisory is handling an auction process for dozens of solar parks, Sky News reported, with Schroders Greencoat taking pole position alongside other reported contenders including London's GLIL and Hong Kong-based infrastructure titan CKI.",
  );

  static const String privPolU =
      'https://docs.google.com/document/d/1T7xKDTzLnan5KMgpUy7S2qSe53OTqgYlNjlzcI2pOdA/edit?usp=sharing';
  static const String termsOfUseU =
      'https://docs.google.com/document/d/18eKjg1Lf3TLqfiQjmJDx7oB4-gxDpT3hHuSGVcwRGP4/edit?usp=sharing';
}
