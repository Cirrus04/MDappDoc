-- Find below all the SQL-statements required to create an **empty** the MD database.
--Note that some of the tables need to be prefilled with data to be able to
-- <pre><code>-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
-- Host: localhost    Database: md4
-- Server version  8.0.31
--
CREATE DATABASE MD4;
--
DROP TABLE IF EXISTS DataReviewQueue;
  --
  CREATE TABLE DataReviewQueue        ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , ticker                VARCHAR(20)     NOT NULL
                                      , _symbol_ID            INT             NOT NULL
                                      , exchange              VARCHAR(10)     NOT NULL
                                      , discrepancyDate       DATE            NOT NULL
                                      , myAdjustedClose       DECIMAL(10, 4)  DEFAULT NULL
                                      , EODHDadjustedClose    DECIMAL(10, 4)  DEFAULT NULL
                                      , percentageDiff        DECIMAL(10, 4)  DEFAULT NULL
                                      , reasonFlagged         VARCHAR(255)    DEFAULT NULL
                                      , status                enum('new', 'reviewing', 'resolved', 'wont_fix') DEFAULT 'new'
                                      , createdAt             TIMESTAMP      NULL DEFAULT CURRENT_TIMESTAMP
                                      , PRIMARY KEY(id)
                                      );
--
DROP TABLE IF EXISTS tComment;
  --
  CREATE TABLE tComment               ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , postId                INT             NOT NULL
                                      , authorId              INT             NOT NULL
                                      , content               TEXT            NOT NULL
                                      , createdAt             DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP
                                      , updatedAt             DATETIME        DEFAULT NULL
                                      , publishedAt           DATETIME        DEFAULT NULL
                                      , published             TINYINT         NOT NULL DEFAULT '0'
                                      , PRIMARY KEY(id)
                                      , KEY IX_C_1(postId)
                                      , KEY IX_C_2(authorId)
                                      , CONSTRAINT FK_C_1 FOREIGN KEY (postId)   REFERENCES tPost(id)
                                      , CONSTRAINT FK_C_2 FOREIGN KEY (authorId) REFERENCES tMailUser(id)
                                      );
--
DROP TABLE IF EXISTS tDeathX;
  --
  CREATE TABLE tDeathX                ( exchange              VARCHAR(9)      NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , crossDate             DATE            NOT NULL
                                      , type                  VARCHAR(16)     NOT NULL
                                      , PRIMARY KEY( exchange , ticker )
                                      );
--
DROP TABLE IF EXISTS tDelistedSymbols;
  --
  CREATE TABLE tDelistedSymbols       ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , exchange              VARCHAR(9)      NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , currency              VARCHAR(4)      NOT NULL
                                      , ISIN                  VARCHAR(12)     DEFAULT NULL
                                      , type                  VARCHAR(16)     NOT NULL
                                      , country               VARCHAR(16)     NOT NULL
                                      , fullname              VARCHAR(256)    NOT NULL
                                      , loadDate              DATE            NOT NULL DEFAULT(curdate())
                                      , needsHistoryDeletion  TINYINT         DEFAULT '1'
                                      , PRIMARY KEY(ID)
                                      , UNIQUE KEY UIX_DS_1(exchange, ticker)
                                      );
--
DROP TABLE IF EXISTS tDividend;
  --
  CREATE TABLE tDividend              ( exchange              VARCHAR(9)      NOT NULL
                                      , _symbol_ID            INT             NOT NULL
                                      , dividendDate          DATE            NOT NULL
                                      , value                 DECIMAL(10, 4)  NOT NULL
                                      , creationDate          DATE            DEFAULT(curdate())
                                      , modificationDate      DATE            DEFAULT NULL
                                      , needsRecalculation    TINYINT         NOT NULL DEFAULT '1' COMMENT 'Flag indicating if adjusted close needs recalculation due to this dividend'
                                      , PRIMARY KEY( exchange , _symbol_ID , dividendDate )
                                      , KEY IX_D_1(_symbol_ID)
                                      , KEY IX_D_2(needsRecalculation, _symbol_ID, exchange)
                                      , CONSTRAINT FK_D_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tFavorite;
  --
  CREATE TABLE tFavorite              ( ID                    INT             NOT NULL
                                      , name                  VARCHAR(16)     NOT NULL
                                      , sortOrder             INT             DEFAULT NULL
                                      , _userid               VARCHAR(255)    DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_F_1(_userid)
                                      , CONSTRAINT FK_F_1 FOREIGN KEY (_userid) REFERENCES tUser(userid)
                                      );
--
DROP TABLE IF EXISTS tGoldenX;
  --
  CREATE TABLE tGoldenX               ( exchange              VARCHAR(9)      NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , crossDate             DATE            NOT NULL
                                      , type                  VARCHAR(16)     DEFAULT NULL
                                      , PRIMARY KEY( exchange , ticker )
                                      );
--
DROP TABLE IF EXISTS tLastEMA12perSymbol;
  --
  CREATE TABLE tLastEMA12perSymbol    ( _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA12                 DECIMAL(10, 4)  DEFAULT NULL
                                      , exchange              VARCHAR(9)      DEFAULT NULL
                                      , KEY IX_LEMA12S_1(_symbol_ID, exchange, intraday, EMA12)
                                      );
--
DROP TABLE IF EXISTS tLastEMA200perSymbol;
  --
  CREATE TABLE tLastEMA200perSymbol   ( _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , exchange              VARCHAR(9)      DEFAULT NULL
                                      , KEY IX_LEMA200S_1(_symbol_ID, exchange, intraday, EMA200)
                                      );
--
DROP TABLE IF EXISTS tLastEMA26perSymbol;
  --
  CREATE TABLE tLastEMA26perSymbol    ( _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA26                 DECIMAL(10, 4)  DEFAULT NULL
                                      , exchange              VARCHAR(9)      DEFAULT NULL
                                      , KEY IX_LEMA26S_1(_symbol_ID, exchange, intraday, EMA26)
                                      );
--
DROP TABLE IF EXISTS tLastEMA50perSymbol;
  --
  CREATE TABLE tLastEMA50perSymbol    ( _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , exchange              VARCHAR(9)      DEFAULT NULL
                                      , KEY IX_LEMA50S_1(_symbol_ID, exchange, intraday, EMA50)
                                      );
--
DROP TABLE IF EXISTS tMailUser;
  --
  CREATE TABLE tMailUser              ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , username              VARCHAR(255)    NOT NULL
                                      , email                 VARCHAR(50)     NOT NULL
                                      , phone                 VARCHAR(20)     NOT NULL
                                      , PRIMARY KEY(id)
                                      , UNIQUE KEY UK_MU_1(username, email, phone)
                                      );
--
DROP TABLE IF EXISTS tMarket;
  --
  CREATE TABLE tMarket                ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , market                VARCHAR(20)     NOT NULL
                                      , createdAt             DATE            DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      );
--
DROP TABLE IF EXISTS tMyFavorite;
  --
  CREATE TABLE tMyFavorite            ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _favoriteList_ID      INT             NOT NULL
                                      , _symbol_ID            INT             NOT NULL
                                      , sortOrder             INT             NOT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_MF_1(_favoriteList_ID)
                                      , KEY IX_MF_2(_symbol_ID)
                                      , CONSTRAINT FK_MF_1 FOREIGN KEY (_favoriteList_ID) REFERENCES tMyFavoriteList(ID)
                                      , CONSTRAINT FK_MF_2 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tMyFavoriteList;
  --
  CREATE TABLE tMyFavoriteList        ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , name                  VARCHAR(64)     DEFAULT NULL
                                      , sortOrder             INT             NOT NULL
                                      , _userid               VARCHAR(255)    NOT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_MFL_1(_userid)
                                      , CONSTRAINT FK_MFL_1 FOREIGN KEY (_userid) REFERENCES tUser(userid)
                                      );
--
DROP TABLE IF EXISTS tParentChild;
  --
  CREATE TABLE tParentChild           ( parentId              INT             NOT NULL
                                      , childId               INT             NOT NULL
                                      , PRIMARY KEY( parentId , childId )
                                      , KEY IX_PC_1(parentId)
                                      , KEY IX_PC_2(childId)
                                      , CONSTRAINT FK_PC_1 FOREIGN KEY (parentId) REFERENCES tComment(ID)
                                      , CONSTRAINT FK_PC_2 FOREIGN KEY (childId) REFERENCES tComment(ID)
                                      );
--
DROP TABLE IF EXISTS tPost;
  --
  CREATE TABLE tPost                  ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , authorId              INT             NOT NULL
                                      , title                 VARCHAR(100)    NOT NULL
                                      , content               TEXT            NOT NULL
                                      , createdAt             DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP
                                      , updatedAt             DATETIME        DEFAULT NULL
                                      , publishedAt           DATETIME        DEFAULT NULL
                                      , published             TINYINT         NOT NULL DEFAULT '0'
                                      , PRIMARY KEY(id)
                                      , KEY IX_P_1(authorId)
                                      , CONSTRAINT FK_P_1 FOREIGN KEY (authorId) REFERENCES tMailUser(ID)
                                      );
--
DROP TABLE IF EXISTS tPrevSignalLine_NASDAQ;
  --
  CREATE TABLE tPrevSignalLine_NASDAQ ( _symbol_ID            INT             NOT NULL
                                      , lastSignalLine        DECIMAL(10, 5)  DEFAULT NULL
                                      , lastSignalDate        DATE            DEFAULT NULL
                                      , PRIMARY KEY(_symbol_ID)
                                      );
--
DROP TABLE IF EXISTS tPrevSignalLine_NYSE;
  --
  CREATE TABLE tPrevSignalLine_NYSE   ( _symbol_ID            INT             NOT NULL
                                      , lastSignalLine        DECIMAL(10, 5)  DEFAULT NULL
                                      , lastSignalDate        DATE            DEFAULT NULL
                                      , PRIMARY KEY(_symbol_ID)
                                      );
--
DROP TABLE IF EXISTS tPrevSignalLine_ST;
  --
  CREATE TABLE tPrevSignalLine_ST     ( _symbol_ID            INT             NOT NULL
                                      , lastSignalLine        DECIMAL(10, 5)  DEFAULT NULL
                                      , lastSignalDate        DATE            DEFAULT NULL
                                      , PRIMARY KEY(_symbol_ID)
                                      );
--
DROP TABLE IF EXISTS tPrice_NASDAQ;
  --
  CREATE TABLE tPrice_NASDAQ          ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , openingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , highPrice             DECIMAL(10, 4)  DEFAULT NULL
                                      , lowPrice              DECIMAL(10, 4)  DEFAULT NULL
                                      , closingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClosingPrice  DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , volume                BIGINT          DEFAULT NULL
                                      , creationDate          DATE            NOT NULL DEFAULT(curdate())
                                      , SMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , SMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , MACD                  DECIMAL(12, 5)  DEFAULT NULL
                                      , SignalLine            DECIMAL(10, 5)  DEFAULT NULL
                                      , EMA12                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA26                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , rsi14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , adx14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , bbUpper20             DECIMAL(10, 4)  DEFAULT NULL
                                      , bbMid20               DECIMAL(10, 4)  DEFAULT NULL
                                      , bbLower20v            DECIMAL(10, 4)  DEFAULT NULL
                                      , plusDI14              DECIMAL(10, 4)  DEFAULT NULL
                                      , minusDI14             DECIMAL(10, 4)  DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_PNASDAQ_1(_symbol_ID)
                                      , KEY IX_PNASDAQ_2(_symbol_ID, intraday)
                                      , CONSTRAINT FK_PNASDAQ_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tPrice_NYSE;
  --
  CREATE TABLE tPrice_NYSE            ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , openingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , highPrice             DECIMAL(10, 4)  DEFAULT NULL
                                      , lowPrice              DECIMAL(10, 4)  DEFAULT NULL
                                      , closingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClosingPrice  DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , volume                BIGINT          DEFAULT NULL
                                      , creationDate          DATE            NOT NULL DEFAULT(curdate())
                                      , SMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , SMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , MACD                  DECIMAL(12, 5)  DEFAULT NULL
                                      , SignalLine            DECIMAL(10, 5)  DEFAULT NULL
                                      , EMA12                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA26                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , rsi14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , adx14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , bbUpper20             DECIMAL(10, 4)  DEFAULT NULL
                                      , bbMid20               DECIMAL(10, 4)  DEFAULT NULL
                                      , bbLower20v            DECIMAL(10, 4)  DEFAULT NULL
                                      , plusDI14              DECIMAL(10, 4)  DEFAULT NULL
                                      , minusDI14             DECIMAL(10, 4)  DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_PNYSE_1(_symbol_ID)
                                      , KEY IX_PNYSE_2(_symbol_ID, intraday)
                                      , CONSTRAINT FK_PNYSE_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tPrice_ST;
  --
  CREATE TABLE tPrice_ST              ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _symbol_ID            INT             NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , openingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , highPrice             DECIMAL(10, 4)  DEFAULT NULL
                                      , lowPrice              DECIMAL(10, 4)  DEFAULT NULL
                                      , closingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClosingPrice  DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , volume                BIGINT          DEFAULT NULL
                                      , creationDate          DATE            NOT NULL DEFAULT(curdate())
                                      , SMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , SMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , MACD                  DECIMAL(12, 5)  DEFAULT NULL
                                      , SignalLine            DECIMAL(10, 5)  DEFAULT NULL
                                      , EMA12                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA26                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , rsi14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , adx14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , bbUpper20             DECIMAL(10, 4)  DEFAULT NULL
                                      , bbMid20               DECIMAL(10, 4)  DEFAULT NULL
                                      , bbLower20v            DECIMAL(10, 4)  DEFAULT NULL
                                      , plusDI14              DECIMAL(10, 4)  DEFAULT NULL
                                      , minusDI14             DECIMAL(10, 4)  DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_PST_1(_symbol_ID)
                                      , KEY IX_PST_2(_symbol_ID, intraday)
                                      , CONSTRAINT FK_PST_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tPrice_TOT;
  --
  CREATE TABLE tPrice_TOT             ( exchange              VARCHAR(9)      NOT NULL
                                      , intraday              DATE            NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , _symbol_ID            INT             DEFAULT NULL
                                      , openingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , highPrice             DECIMAL(10, 4)  DEFAULT NULL
                                      , lowPrice              DECIMAL(10, 4)  DEFAULT NULL
                                      , closingPrice          DECIMAL(10, 4)  DEFAULT NULL
                                      , adjustedClosingPrice  DECIMAL(10, 4)  DEFAULT NULL
                                      , volume                BIGINT          DEFAULT NULL
                                      , loadDate              DATE            NOT NULL DEFAULT(curdate())
                                      , PRIMARY KEY( exchange , intraday , ticker )
                                      , KEY IX_PTOT_1(exchange, ticker)
                                      , KEY IX_PTOT_2(intraday, _symbol_ID)
                                      );
--
DROP TABLE IF EXISTS tRankedPrices;
  --
  CREATE TABLE tRankedPrices          ( ID                    INT NOT NULL DEFAULT '0'
                                      , intraday              DATE NOT NULL
                                      , adjustedClosingPrice  DECIMAL(10, 4)  DEFAULT NULL
                                      , SMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , SMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA12                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA26                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA50                 DECIMAL(10, 4)  DEFAULT NULL
                                      , EMA200                DECIMAL(10, 4)  DEFAULT NULL
                                      , MACDV                 DECIMAL(10, 5)  DEFAULT NULL
                                      , MACDS                 DECIMAL(10, 5)  DEFAULT NULL
                                      , MACD                  DECIMAL(11, 5)  DEFAULT NULL
                                      , entryPrice            DECIMAL(10, 2)  DEFAULT NULL
                                      , sellPrice             DECIMAL(10, 2)  DEFAULT NULL
                                      , rn                    BIGINT unsigned NOT NULL DEFAULT '0'
                                      , max_rn                BIGINT unsigned DEFAULT NULL
                                      , adjustedClose         DECIMAL(10, 4)  DEFAULT NULL
                                      , rsi14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , adx14                 DECIMAL(10, 4)  DEFAULT NULL
                                      , bbUpper20             DECIMAL(10, 4)  DEFAULT NULL
                                      , bbMid20               DECIMAL(10, 4)  DEFAULT NULL
                                      , bbLower20             DECIMAL(10, 4)  DEFAULT NULL
                                      , plusDI14              DECIMAL(10, 4)  DEFAULT NULL
                                      , minusDI14             DECIMAL(10, 4)  DEFAULT NULL
                                      , splitAnnouncement     DECIMAL(10, 4)  DEFAULT NULL
                                      , dividendAnnouncement  DECIMAL(10, 4)  DEFAULT NULL
                                      );
--
DROP TABLE IF EXISTS tSell;
  --
  CREATE TABLE tSell                  ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _trade_ID             INT             NOT NULL
                                      , quantity              INT             NOT NULL
                                      , sellPrice             DECIMAL(10, 2)  NOT NULL
                                      , sellDate              DATE            NOT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_S_1(_trade_ID)
                                      , CONSTRAINT FK_S_1 FOREIGN KEY (_trade_ID) REFERENCES tTrade(ID)
                                      );
--
DROP TABLE IF EXISTS tSlopeIntercept;
  --
  CREATE TABLE tSlopeIntercept        ( maxIntraday           DATE
                                      , exchange              VARCHAR(6)      DEFAULT NULL
                                      , type                  VARCHAR(16)     NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , timeframe             BIGINT          DEFAULT NULL
                                      , slope                 DOUBLE          DEFAULT NULL
                                      );
--
DROP TABLE IF EXISTS tSplit;
  --
  CREATE TABLE tSplit                 ( exchange              VARCHAR(9)      NOT NULL
                                      , _symbol_ID            INT             NOT NULL
                                      , splitDate             DATE            NOT NULL
                                      , splitRatio            DECIMAL(10, 6)  DEFAULT NULL
                                      , modificationDate      DATE            DEFAULT NULL
                                      , needsRecalculation    TINYINT         NOT NULL DEFAULT '1' COMMENT 'Flag indicating if adjusted close needs recalculation due to this split'
                                      , PRIMARY KEY(exchange, _symbol_ID, splitDate)
                                      , KEY IX_Spl_1(_symbol_ID)
                                      , KEY IX_Spl_2(needsRecalculation, _symbol_ID, exchange)
                                      , CONSTRAINT FK_Spl_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tStockDailyMetrics;
  --
  CREATE TABLE tStockDailyMetrics     ( ticker                VARCHAR(20)     NOT NULL
                                      , metricDate            DATE            NOT NULL
                                      , timeframe             INT             NOT NULL
                                      , lastPrice             DECIMAL(10, 2)  DEFAULT NULL
                                      , roc                   DECIMAL(10, 2)  DEFAULT NULL
                                      , slope                 DECIMAL(10, 6)  DEFAULT NULL
                                      , rSquared              DECIMAL(10, 4)  DEFAULT NULL
                                      , exch                  VARCHAR(10)     DEFAULT NULL
                                      , type                  VARCHAR(50)     DEFAULT NULL
                                      , calculated            TIMESTAMP       NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
                                      , PRIMARY KEY(ticker, metricDate, timeframe)
                                      , KEY IX_SDM_1(metricDate, timeframe)
                                      , KEY IX_SDM_2(roc)
                                      , KEY IX_SDM_3(slope)
                                      , KEY IX_SDM_4(rSquared)
                                      );
--
DROP TABLE IF EXISTS tStopLoss;
  --
  CREATE TABLE tStopLoss              ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _trade_ID             INT             NOT NULL
                                      , trailingStopPrice     DECIMAL(10, 2)  NOT NULL
                                      , trailAmount           DECIMAL(10, 2)  NOT NULL
                                      , lastClosingPrice      DECIMAL(10, 2)  NOT NULL
                                      , active                enum('active', 'inactive') DEFAULT 'active'
                                      , PRIMARY KEY(ID)
                                      , KEY IX_SL_1(_trade_ID)
                                      , CONSTRAINT FK_SL_1 FOREIGN KEY (_trade_ID) REFERENCES tTrade(ID)
                                      );
--
DROP TABLE IF EXISTS tSymbol;
  --
  CREATE TABLE tSymbol                ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , _market_ID            INT             DEFAULT NULL
                                      , _type_ID              INT             DEFAULT NULL
                                      , fullname              VARCHAR(256)    DEFAULT NULL
                                      , country               VARCHAR(16)     DEFAULT NULL
                                      , exchange              VARCHAR(9)      DEFAULT NULL
                                      , currency              VARCHAR(4)      DEFAULT NULL
                                      , ISIN                  VARCHAR(12)     DEFAULT NULL
                                      , creationDate          DATE            DEFAULT(curdate())
                                      , myFavorite            INT             DEFAULT '0'
                                      , tickerStatus          enum('active', 'inactive') DEFAULT 'active'
                                      , modificationDate      DATE            DEFAULT NULL
                                      , PRIMARY KEY(ID)
                                      , KEY IX_Sym_1(_market_ID)
                                      , KEY IX_Sym_2(_type_ID)
                                      , KEY IX_Sym_3(myFavorite)
                                      , KEY IX_Sym_4(exchange, ticker)
                                      , KEY IX_Sym_5(exchange, ID)
                                      , CONSTRAINT FK_Sym_1 FOREIGN KEY (_market_ID) REFERENCES tMarket(ID)
                                      , CONSTRAINT FK_Sym_2 FOREIGN KEY (_type_ID) REFERENCES tType(ID)
                                      , CONSTRAINT FK_Sym_3 FOREIGN KEY (myFavorite) REFERENCES tFavorite(ID)
                                      );
--
DROP TABLE IF EXISTS tSymbol_TOT;
  --
  CREATE TABLE tSymbol_TOT            ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , exchange              VARCHAR(9)      NOT NULL
                                      , ticker                VARCHAR(16)     NOT NULL
                                      , currency              VARCHAR(4)      NOT NULL
                                      , ISIN                  VARCHAR(12)     DEFAULT NULL
                                      , type                  VARCHAR(16)     NOT NULL
                                      , country               VARCHAR(16)     NOT NULL
                                      , fullname              VARCHAR(256)    NOT NULL
                                      , loadDate              DATE            NOT NULL DEFAULT(curdate())
                                      , PRIMARY KEY(ID)
                                      , UNIQUE KEY UIX_STOT_1(exchange, ticker)
                                      );
--
DROP TABLE IF EXISTS tTrade;
  --
  CREATE TABLE tTrade                 ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , _symbol_ID            INT             NOT NULL
                                      , quantity              INT             NOT NULL
                                      , entryPrice            DECIMAL(10, 2)  NOT NULL
                                      , initialStop           DECIMAL(10, 2)  NOT NULL
                                      , tradeDate             DATE            NOT NULL
                                      , positionClosed        enum('active', 'closed') DEFAULT 'active'
                                      , exchange              VARCHAR(9)      NOT NULL DEFAULT 'ST'
                                      , PRIMARY KEY(ID)
                                      , KEY IX_T_1(_symbol_ID)
                                      , CONSTRAINT FK_T_1 FOREIGN KEY (_symbol_ID) REFERENCES tSymbol(ID)
                                      );
--
DROP TABLE IF EXISTS tType;
  --
  CREATE TABLE tType                  ( ID                    INT             NOT NULL AUTO_INCREMENT
                                      , type                  VARCHAR(16)     NOT NULL
                                      , descr                 VARCHAR(1024)   NOT NULL
                                      , PRIMARY KEY(ID)
                                      );
--
DROP TABLE IF EXISTS tUser;
  --
  CREATE TABLE tUser                  ( userid                VARCHAR(255)    NOT NULL
                                      , password_hash         VARCHAR(255)    NOT NULL
                                      , PRIMARY KEY(userid)
                                      );

-- -----------------------------------
-- Dumping routines for database 'md4'
-- -----------------------------------

DELIMITER ;;
CREATE PROCEDURE CalculateAndStoreStockMetrics ( pDaysLookback INT
                                               , pExchange     VARCHAR(10)
                                               , pType         VARCHAR(50)
                                               , pAsOfDate     DATE
                                               )
BEGIN
  DROP TABLE IF EXISTS tmpCalculatedMetrics;
  --
  CREATE TEMPORARY TABLE tmpCalculatedMetrics ( ticker     VARCHAR(20)       NOT NULL
                                              , exch       VARCHAR(10)       NOT NULL
                                              , type       VARCHAR(50)       NOT NULL
                                              , lastDate   DATE              NOT NULL
                                              , lastPrice  DECIMAL(10,2)     NOT NULL
                                              , timeframe  INT               NOT NULL
                                              , roc        DECIMAL(10,2) DEFAULT NULL
                                              , rSquared   DECIMAL(10,4) DEFAULT NULL
                                              , slope      DECIMAL(10,6) DEFAULT NULL
                                              , PRIMARY KEY(ticker, timeframe)
                                                                                );
  DROP TABLE IF EXISTS tmpRawPrices;
  --
  CREATE TEMPORARY TABLE tmpRawPrices
  SELECT     T1._symbol_ID, T2.ticker, T3.type, T1.intraday, T1.adjustedClose
           , CASE
               WHEN pExchange = 'ST'     THEN 'ST'
               WHEN pExchange = 'NYSE'   THEN 'NYSE'
               WHEN pExchange = 'NASDAQ' THEN 'NASDAQ'
             END AS exch
  FROM (
       SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_ST     WHERE pExchange = 'ST'
       UNION ALL
       SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NYSE   WHERE pExchange = 'NYSE'
       UNION ALL
       SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NASDAQ WHERE pExchange = 'NASDAQ'
       )                      AS T1
  INNER JOIN tSymbol          AS T2 ON T1._symbol_ID = T2.ID
  INNER JOIN tType            AS T3 ON T2._type_ID   = T3.ID
  WHERE      T2.tickerStatus   = 'active'
  AND        T3.type           = pType
  AND        T1.adjustedClose  > 0
  AND        T1.intraday      <= pAsOfDate;

  -- ======= ROC CALCULATION =======
  -- This will INSERT into tmpCalculatedMetrics
  -- lastDate from this will be the metricDate for the permanent table.
  --
  SET @sql_roc_cte = CONCAT(
   'INSERT INTO tmpCalculatedMetrics (ticker, exch, type, lastDate, lastPrice, roc, timeframe)
    WITH RankedPricesForROC AS (
           SELECT exch, type, intraday, ticker, adjustedClose
                , LAG(adjustedClose, ', pDaysLookback, ') OVER (PARTITION BY ticker ORDER BY intraday ASC) AS price_n_periods_ago
                , ROW_NUMBER() OVER (PARTITION BY ticker ORDER BY intraday DESC) AS rn_latest
           FROM   tmpRawPrices
         )
       , ROCCalculated AS      (
           SELECT exch, type, intraday, ticker, adjustedClose, price_n_periods_ago
                , CASE
                    WHEN price_n_periods_ago IS NOT NULL AND price_n_periods_ago != 0
                    THEN ((adjustedClose - price_n_periods_ago) / price_n_periods_ago) * 100
                    ELSE NULL
                  END AS roc
           FROM   RankedPricesForROC
           WHERE  rn_latest = 1 -- Calculate ROC for the latest date in the (potentially filtered by pAsOfDate) RawPricesForROC
         )
    SELECT T1.ticker, T1.exch, T1.type, T1.intraday, T1.adjustedClose, ROUND(T1.roc, 2), ', pDaysLookback, '
    FROM   ROCCalculated AS T1
    WHERE  T1.roc IS NOT NULL
    ON DUPLICATE KEY UPDATE exch       = T1.exch
                          , type       = T1.type
                          , lastDate   = lastDate
                          , lastPrice  = lastPrice
                          , roc        = T1.roc;'
                                      );
    --
  PREPARE stmt_roc FROM @sql_roc_cte;
  --
  EXECUTE stmt_roc;
  --
  DEALLOCATE PREPARE stmt_roc;
  --
  -- ======= SLOPE AND R-SQUARED CALCULATION & UPDATE =======
  DROP TABLE IF EXISTS tmpSlopeR2Data;
  --
  CREATE TEMPORARY TABLE tmpSlopeR2Data ( ticker                     VARCHAR(20) NOT NULL
                                        , slope                      DECIMAL(10,6)
                                        , rSquared                   DECIMAL(10,4)
                                        , points_used_for_regression INT
                                        , timeframe_for_calc         INT -- To ensure we join correctly
                                        , PRIMARY KEY(ticker, timeframe_for_calc)
                                                                          );
  --
  INSERT INTO tmpSlopeR2Data (ticker, slope, rSquared, points_used_for_regression, timeframe_for_calc)
    WITH RawPricesForRegression AS (
         SELECT     T1._symbol_ID, T2.ticker, T1.intraday, T1.adjustedClose
         FROM (
              SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_ST     WHERE pExchange = 'ST'
              UNION ALL
              SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NYSE   WHERE pExchange = 'NYSE'
              UNION ALL
              SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NASDAQ WHERE pExchange = 'NASDAQ'
              )                      AS T1
         INNER JOIN tSymbol          AS T2 ON T1._symbol_ID = T2.ID
         INNER JOIN tType            AS T3 ON T2._type_ID   = T3.ID
         WHERE      T2.tickerStatus   = 'active'
         AND        T3.type           = pType
         AND        T1.adjustedClose  > 0
         AND        T1.intraday      <= pAsOfDate
       )
     , RankedRegressionData AS (
         SELECT rpr.ticker, rpr.intraday, rpr.adjustedClose, LOG(rpr.adjustedClose) AS log_adjustedClose
              , ROW_NUMBER() OVER (PARTITION BY rpr.ticker ORDER BY rpr.intraday DESC) as rn_desc
         FROM   RawPricesForRegression AS rpr
       )
     , RegressionDataWindow AS (
         SELECT     rrd.ticker, rrd.log_adjustedClose, rrd.intraday
                  , ROW_NUMBER() OVER (PARTITION BY rrd.ticker ORDER BY rrd.intraday ASC) - 1 AS x_val
         FROM       RankedRegressionData   AS rrd
         WHERE      rrd.rn_desc <= pDaysLookback
       )
     , Aggregates AS (
         SELECT   ticker, COUNT(*) AS n, AVG(x_val) AS x_bar, AVG(log_adjustedClose) AS y_bar
         FROM     RegressionDataWindow
         GROUP BY ticker
      -- HAVING   COUNT(*) >= GREATEST(10, FLOOR(pDaysLookback * 0.8)) AND COUNT(*) >= 2
         HAVING   COUNT(*) = pDaysLookback AND COUNT(*) >= 2
       )
     , RegressionParams AS (
         SELECT     rdw.ticker, agg.n, agg.x_bar, agg.y_bar
                  , SUM((rdw.x_val - agg.x_bar) * (rdw.log_adjustedClose - agg.y_bar)) /
                    NULLIF(SUM((rdw.x_val - agg.x_bar) * (rdw.x_val - agg.x_bar)), 0) AS slope
         FROM       RegressionDataWindow AS rdw
         INNER JOIN Aggregates           AS agg ON rdw.ticker = agg.ticker
         GROUP BY   rdw.ticker, agg.n, agg.x_bar, agg.y_bar
       )
     , RegressionLine AS (
         SELECT ticker, n, slope, (y_bar - slope * x_bar) AS intercept, y_bar FROM RegressionParams WHERE slope IS NOT NULL
       )
     , ResidualsAndTotals AS (
         SELECT     rdw.ticker, rl.n, rl.slope, rl.intercept, rl.y_bar
                  , (rdw.log_adjustedClose - (rl.intercept + rl.slope * rdw.x_val)) AS residual
                  , (rdw.log_adjustedClose - rl.y_bar) AS deviation_from_mean_y
         FROM       RegressionDataWindow AS rdw
         INNER JOIN RegressionLine       AS rl ON rdw.ticker = rl.ticker
       )
     , SumOfSquares AS (
         SELECT   ticker, n, slope, intercept, SUM(residual * residual) AS ss_res, SUM(deviation_from_mean_y * deviation_from_mean_y) AS ss_tot
         FROM     ResidualsAndTotals
         GROUP BY ticker, slope, intercept
       )
     , FinalCalculationsSR AS (
         SELECT ticker, n AS points_used, slope
              , CASE
                  WHEN ss_tot = 0 AND ss_res <  1e-9 THEN 1
                  WHEN ss_tot = 0 AND ss_res >= 1e-9 THEN 0
                  ELSE GREATEST(0, 1 - (ss_res / NULLIF(ss_tot, 0)))
                END AS rSquared
         FROM   SumOfSquares
       )
  SELECT ticker, ROUND(slope, 6), ROUND(rSquared, 4), points_used, pDaysLookback FROM FinalCalculationsSR;
  --
  -- Now, UPDATE tmpCombinedMetrics by joining with the newly populated tmpSlopeR2Data
  --
  UPDATE     tmpCalculatedMetrics AS tcm
  INNER JOIN tmpSlopeR2Data AS sr_data
          ON tcm.ticker      = sr_data.ticker
         AND tcm.timeframe   = sr_data.timeframe_for_calc
  SET        tcm.slope       = sr_data.slope,
             tcm.rSquared    = sr_data.rSquared;
  --
  -- ======= INSERT OR UPDATE PERMANENT TABLE =======
  INSERT INTO tStockDailyMetrics
              (ticker, metricDate, timeframe, lastPrice, roc, slope, rSquared, exch, type)
  SELECT      T1.ticker, T1.lastDate  , T1.timeframe, T1.lastPrice, T1.roc, T1.slope, T1.rSquared, T1.exch, T1.type
  FROM        tmpCalculatedMetrics AS T1
  WHERE       T1.roc   IS NOT NULL
  OR          T1.slope IS NOT NULL
  ON DUPLICATE KEY UPDATE lastPrice  = T1.lastPrice
                        , roc        = T1.roc
                        , slope      = T1.slope
                        , rSquared   = T1.rSquared
                        , exch       = T1.exch
                        , type       = T1.type
                        , calculated = CURRENT_TIMESTAMP;
  --
  -- Optional: Output what was just calculated/stored for this run
  --
  -- SELECT   ticker, lastDate AS metricDate, timeframe, lastPrice, slope, rSquared, roc, exch, type
  -- FROM     tmpCalculatedMetrics
  -- WHERE    timeframe = pDaysLookback
  -- AND      (roc IS NOT NULL OR slope IS NOT NULL)
  -- ORDER BY roc DESC;
  --
  DROP TABLE IF EXISTS tmpRawPrices;
  DROP TABLE IF EXISTS tmpSlopeR2Data;
  DROP TABLE IF EXISTS tmpCalculatedMetrics;
  --
  END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE GetSlopeIntercept (p_days INT, p_exchange VARCHAR(10), p_type VARCHAR(50))
BEGIN
DROP TABLE IF EXISTS tmp_RankedPrices;
--
CREATE TABLE tmp_RankedPrices AS
WITH
  RankedPrices    AS (
                     SELECT     CASE
                                  WHEN p_exchange = 'ST'     THEN 'ST'
                                  WHEN p_exchange = 'NYSE'   THEN 'NYSE'
                                  WHEN p_exchange = 'NASDAQ' THEN 'NASDAQ'
                                END AS exchange
                              , T3.type, T1.intraday, T2.ticker, T1.adjustedClose
                              , ROW_NUMBER() OVER (PARTITION BY T1._symbol_ID ORDER BY T1.intraday ASC) AS rn
                     FROM       (
                                SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_ST     WHERE p_exchange = 'ST'
                                UNION ALL
                                SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NYSE   WHERE p_exchange = 'NYSE'
                                UNION ALL
                                SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NASDAQ WHERE p_exchange = 'NASDAQ'
                                ) AS T1
                     INNER JOIN tSymbol        AS T2 ON T1._symbol_ID = T2.ID
                     INNER JOIN tType          AS T3 ON T2._type_ID   = T3.ID
                     WHERE      T2.tickerStatus = 'active'
                     AND        T3.type         = p_type
                     AND        T1.adjustedClose > 0
                     )
, MaxRowNumbers   AS ( SELECT ticker, MAX(rn) AS max_rn FROM RankedPrices GROUP BY ticker )
, FilteredPrices  AS (
                     SELECT     RP.* , p_days AS timeframe
                     FROM       RankedPrices  AS RP
                     INNER JOIN MaxRowNumbers AS MRN ON RP.ticker = MRN.ticker
                     WHERE      RP.rn > ( CASE WHEN MRN.max_rn > p_days THEN MRN.max_rn - p_days ELSE 0 END )
                     )
SELECT * FROM FilteredPrices;
--
DROP TABLE IF EXISTS tSlopeIntercept;
--
CREATE TABLE tSlopeIntercept AS
WITH
  Aggregates         AS (
                        SELECT ticker, COUNT(*) AS n, AVG(rn) AS x_bar, AVG(LOG(adjustedClose)) AS y_bar
                        FROM   tmp_RankedPrices GROUP BY ticker
                        )
, RegressionLineCalc AS (
                        SELECT     RP.ticker
                                 , SUM((RP.rn - AGG.x_bar) * (LOG(RP.adjustedClose) - AGG.y_bar)) /
                                   NULLIF(SUM((RP.rn - AGG.x_bar) * (RP.rn - AGG.x_bar)), 0) AS slope
                        FROM       tmp_RankedPrices AS RP
                        INNER JOIN Aggregates       AS AGG ON RP.ticker = AGG.ticker
                        GROUP BY   RP.ticker, AGG.x_bar, AGG.y_bar
                        )
, FinalRegLine       AS ( SELECT ticker, slope FROM RegressionLineCalc )
SELECT  RBD.maxIntraday, RBD.exchange, RBD.type, RBD.ticker, p_days AS timeframe, ROUND(FRL.slope, 6) AS slope
FROM  (
      SELECT   exchange, type, ticker, MAX(intraday) AS maxIntraday
      FROM     tmp_RankedPrices
      GROUP BY exchange, type, ticker
      ) AS RBD
INNER JOIN FinalRegLine AS FRL ON RBD.ticker = FRL.ticker
ORDER BY   RBD.exchange DESC
         , RBD.type
         , FRL.slope DESC
         , RBD.ticker;
--
DROP TABLE IF EXISTS tmp_RankedPrices;
--
SELECT ticker, slope FROM tSlopeIntercept WHERE slope IS NOT NULL ORDER BY slope DESC;

END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE GetStockMetrics( pDaysLookback INT, pExchange VARCHAR(10), pType VARCHAR(50))
BEGIN
  --
  -- Temporary table for the final output of ROC calculations
  --
  DROP TABLE IF EXISTS tmpROCCalculatedData;
  --
  CREATE TEMPORARY TABLE tmpROCCalculatedData ( ticker        VARCHAR(20)
                                              , exch          VARCHAR(10)
                                              , type          VARCHAR(50)
                                              , intraday      DATE
                                              , adjustedClose DECIMAL(10,2)
                                              , roc           DECIMAL(10,2)
                                              , PRIMARY KEY(ticker)
                                                                                );
  --
  -- Dynamic SQL to populate tmpROCCalculatedData
  --
  SET @sql_populate_roc_temp_table = CONCAT(
    'INSERT
     INTO tmpROCCalculatedData (ticker, exch, type, intraday, adjustedClose, roc)
     WITH RawPricesForROC AS    ( SELECT     T1._symbol_ID
                                           , T2.ticker
                                           , T3.type
                                           , T1.intraday
                                           , T1.adjustedClose
                                           , CASE
                                               WHEN ''', pExchange, ''' = ''ST''     THEN ''ST''
                                               WHEN ''', pExchange, ''' = ''NYSE''   THEN ''NYSE''
                                               WHEN ''', pExchange, ''' = ''NASDAQ'' THEN ''NASDAQ''
                                             END AS exch
                                  FROM     ( SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_ST     WHERE ''', pExchange, ''' = ''ST''
                                             UNION ALL
                                             SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NYSE   WHERE ''', pExchange, ''' = ''NYSE''
                                             UNION ALL
                                             SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NASDAQ WHERE ''', pExchange, ''' = ''NASDAQ''
                                           ) AS T1
                                  INNER JOIN tSymbol          AS T2
                                          ON T1._symbol_ID     = T2.ID
                                  INNER JOIN tType            AS T3
                                          ON T2._type_ID       = T3.ID
                                  WHERE      T2.tickerStatus   = ''active''
                                  AND        T3.type           = ''', pType, '''
                                  AND        T1.adjustedClose  > 0
                                )
        , RankedPricesForROC AS ( SELECT exch
                                       , type
                                       , intraday
                                       , ticker
                                       , adjustedClose
                                       , LAG(adjustedClose, ', pDaysLookback, ') OVER (PARTITION BY ticker ORDER BY intraday ASC) AS price_n_periods_ago
                                       , ROW_NUMBER() OVER (PARTITION BY ticker ORDER BY intraday DESC) AS rn_latest
                                  FROM   RawPricesForROC
                                )
        , ROCCalculated AS      ( SELECT exch
                                       , type
                                       , intraday
                                       , ticker
                                       , adjustedClose
                                       , price_n_periods_ago
                                       , CASE
                                           WHEN price_n_periods_ago IS NOT NULL AND price_n_periods_ago != 0
                                           THEN ((adjustedClose - price_n_periods_ago) / price_n_periods_ago) * 100
                                           ELSE NULL
                                         END AS roc
                                  FROM   RankedPricesForROC
                                  WHERE  rn_latest = 1
                                )
     SELECT ticker
          , exch
          , type
          , intraday
          , adjustedClose
          , ROUND(roc, 2)
     FROM   ROCCalculated
     WHERE  roc IS NOT NULL;'
                                       );
    --
    -- SELECT @sql_populate_roc_temp_table;

    PREPARE stmt_populate_roc FROM @sql_populate_roc_temp_table;
    --
    EXECUTE stmt_populate_roc;
    --
    DEALLOCATE PREPARE stmt_populate_roc;
    --
    -- Main temporary table for combined metrics
    --
    DROP TABLE IF EXISTS tmpCombinedMetrics;
    --
    CREATE TEMPORARY TABLE tmpCombinedMetrics ( ticker      VARCHAR(20) NOT NULL
                                              , exch        VARCHAR(10)
                                              , type        VARCHAR(50)
                                              , last_date   DATE
                                              , lastPrice   DECIMAL(10,2)
                                              , roc         DECIMAL(10,2) DEFAULT NULL
                                              , slope       DECIMAL(10,6) DEFAULT NULL
                                              , rSquared    DECIMAL(10,4) DEFAULT NULL
                                              , timeframe   INT NOT NULL
                                              , PRIMARY KEY(ticker, timeframe)
                                                                                );
    --
    -- Insert data from tmpROCCalculatedData into tmpCombinedMetrics
    --
    INSERT
    INTO tmpCombinedMetrics ( ticker , exch , type , last_date , lastPrice     , roc , timeframe )
    SELECT                    ticker , exch , type , intraday  , adjustedClose , roc , pDaysLookback
    FROM tmpROCCalculatedData;
    --
    -- CTEs for Slope and R-Squared (these are static SQL, no dynamic parts needed here for pDaysLookback)
    --
    WITH
      RawPricesForRegression AS ( SELECT     T1._symbol_ID
                                           , T2.ticker
                                           , T1.intraday
                                           , T1.adjustedClose
                                  FROM     (
                                             SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_ST     WHERE pExchange = 'ST'
                                             UNION ALL
                                             SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NYSE   WHERE pExchange = 'NYSE'
                                             UNION ALL
                                             SELECT _symbol_ID, intraday, adjustedClose FROM tPrice_NASDAQ WHERE pExchange = 'NASDAQ'
                                           )                  AS T1
                                  INNER JOIN tSymbol          AS T2 ON T1._symbol_ID = T2.ID
                                  INNER JOIN tType            AS T3 ON T2._type_ID   = T3.ID
                                  WHERE      T2.tickerStatus   = 'active'
                                  AND        T3.type           = pType
                                  AND        T1.adjustedClose  > 0
                                )
                               , RegressionDataWindow AS ( SELECT       rpr.ticker
                                           , LOG(rpr.adjustedClose) AS log_adjusted_close
                                           , ROW_NUMBER() OVER (PARTITION BY rpr.ticker ORDER BY rpr.intraday ASC) - 1 AS x_val
                                FROM         RawPricesForRegression AS rpr
                                INNER JOIN ( SELECT   ticker
                                                    , MAX(intraday) AS max_date
                                             FROM     RawPricesForRegression
                                             GROUP BY ticker
                                           )            AS latest
                                        ON rpr.ticker    = latest.ticker
                                WHERE      rpr.intraday >= DATE_SUB(latest.max_date, INTERVAL (pDaysLookback - 1) DAY)
                                AND        rpr.intraday <= latest.max_date
                              )
                               , Aggregates AS           ( SELECT   ticker
                                       , COUNT(*)                    AS n
                                       , AVG(x_val)              AS x_bar
                                       , AVG(log_adjusted_close) AS y_bar
                                FROM     RegressionDataWindow
                                GROUP BY ticker
                             -- HAVING   COUNT(*)  = pDaysLookback
                             -- AND      COUNT(*) >= 2
                                HAVING   COUNT(*) >= pDaysLookback * 0.65
                              )
                               , RegressionParams AS     ( SELECT     rdw.ticker
                                         , agg.n
                                         , agg.x_bar
                                         , agg.y_bar
                                         , SUM((rdw.x_val - agg.x_bar) * (rdw.log_adjusted_close - agg.y_bar)) /
                                           NULLIF(SUM((rdw.x_val - agg.x_bar) * (rdw.x_val - agg.x_bar)), 0) AS slope
                                FROM       RegressionDataWindow AS rdw
                                INNER JOIN Aggregates           AS agg
                                        ON rdw.ticker            = agg.ticker
                                GROUP BY   rdw.ticker
                                         , agg.n
                                         , agg.x_bar
                                         , agg.y_bar
                              )
                               , RegressionLine AS       ( SELECT ticker
                                     , slope
                                     , (y_bar - slope * x_bar) AS intercept
                                     , y_bar
                                FROM   RegressionParams
                                WHERE  slope IS NOT NULL
                              )
                               , ResidualsAndTotals AS   ( SELECT     rdw.ticker
                                         , rl.slope
                                         , rl.intercept
                                         , rl.y_bar
                                         , (rdw.log_adjusted_close - (rl.intercept + rl.slope * rdw.x_val)) AS residual
                                         , (rdw.log_adjusted_close - rl.y_bar)                              AS deviation_from_mean_y
                                FROM       RegressionDataWindow AS rdw
                                INNER JOIN RegressionLine       AS rl
                                        ON rdw.ticker            = rl.ticker
                              )
                               , SumOfSquares AS         ( SELECT   ticker
                                       , slope
                                       , intercept
                                       , SUM(residual * residual)                           AS ss_res
                                       , SUM(deviation_from_mean_y * deviation_from_mean_y) AS ss_tot
                                FROM     ResidualsAndTotals
                                GROUP BY ticker
                                       , slope
                                       , intercept
                              )
                               , FinalCalculationsSR AS ( SELECT ticker
                                    , slope
                                    , CASE
                                        WHEN ss_tot = 0 AND ss_res  < 1e-9 THEN 1
                                        WHEN ss_tot = 0 AND ss_res >= 1e-9 THEN 0
                                        ELSE GREATEST(0, 1 - (ss_res / NULLIF(ss_tot, 0)))
                                      END AS rSquared
                               FROM   SumOfSquares
                              )

    -- Update tmpCombinedMetrics with Slope and R-Squared
    UPDATE     tmpCombinedMetrics  AS tcm
    INNER JOIN FinalCalculationsSR AS fcsr
            ON tcm.ticker           = fcsr.ticker
           AND tcm.timeframe        = pDaysLookback
    SET        tcm.slope            = ROUND(fcsr.slope, 6)
             , tcm.rSquared         = ROUND(fcsr.rSquared, 4);
    --
    -- Final output
    --
    SELECT   ticker, last_date, lastPrice, slope, rSquared, roc, exch, type, timeframe
    FROM     tmpCombinedMetrics
    WHERE    timeframe = pDaysLookback
    AND      slope IS NOT NULL
    ORDER BY roc DESC;
    --
    SELECT * FROM tmpROCCalculatedData;
    SELECT * FROM tmpCombinedMetrics ORDER BY roc;
    DROP TABLE IF EXISTS tmpROCCalculatedData;
    DROP TABLE IF EXISTS tmpCombinedMetrics;
    --

END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE spInsertPostings( IN  in_username       VARCHAR ( 255)
               , IN  in_phone          VARCHAR ( 20)
               , IN  in_email          VARCHAR ( 50)
               , IN  in_email_subject  VARCHAR (100)
               , IN  in_email_body     VARCHAR (300)
               )
BEGIN
  DECLARE exit handler for SQLEXCEPTION

    BEGIN
      GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
      SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
      SELECT @full_error;
      END;

    SET in_username = REPLACE (in_username, ' ', '');
    SET in_phone    = REPLACE (in_phone   , ' ', '');

    -- Check if user already exists in table 'tUser'

    IF EXISTS (
               SELECT 1
               FROM   tMailUser
               WHERE  username = in_username
               AND    phone    = in_phone
               AND    email    = in_email
              ) THEN
      BEGIN
      SELECT id
      INTO   @identityColumn
      FROM   tMailUser
      WHERE  username = in_username
      AND    phone    = in_phone
      AND    email    = in_email;
      END;
    ELSE
      BEGIN
      -- User does not exist!
      -- Insert a new 'tUser'-record
      -- and grab the autoincremented id
      INSERT
      INTO   tMailUser (username   , phone   , email)
      VALUES           (in_username, in_phone, in_email);
      --
      SET @identityColumn = LAST_INSERT_ID();
      END;
    END IF;

    -- Now when we do have an existing user in the database
    -- we can add the posted message into the 'tPost'
    INSERT
    INTO   tPost (authorid       , title           , content      , createdAt)
    VALUES       (@identityColumn, in_email_subject, in_email_body, NOW());
  END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE spSaveFavoriteII(_exch VARCHAR(9), _type VARCHAR(16), _list VARCHAR(64), _favorites VARCHAR(1024))
BEGIN
  DECLARE allDone    INTEGER DEFAULT 0;
  DECLARE tckr       VARCHAR(13);
  DECLARE _next      TEXT DEFAULT NULL;
  DECLARE _nextlen   INT  DEFAULT NULL;
  DECLARE _favTicker TEXT DEFAULT NULL;
  DECLARE _resultSet VARCHAR(1024) DEFAULT '';
  --
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET allDone = 1;
  --
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
    GET DIAGNOSTICS CONDITION 1
      @sqlstate = RETURNED_SQLSTATE
                               , @errno    = MYSQL_ERRNO
                               , @text     = MESSAGE_TEXT;
    SET    @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
    SELECT @full_error;
    END;
    --
    DELETE     T2
    FROM       tMyFavorite     AS T2
    INNER JOIN tMyFavoriteList AS T1 ON T2._favoriteList_ID = T1.ID
    INNER JOIN tSymbol         AS T3 ON T3.ID               = T2._symbol_ID
    WHERE      T1.name     = _list
    AND        T3.exchange = _exch;
    --
  iterator:
  --
  LOOP
    IF CHAR_LENGTH(TRIM(_favorites)) = 0 OR _favorites IS NULL THEN
      LEAVE iterator;
    END IF;
    --
    SET _next = SUBSTRING_INDEX(_favorites,',',1);
    SET _nextlen = CHAR_LENGTH(_next);
    SET _favTicker = TRIM(_next);
    INSERT INTO tMyFavorite (_favoriteList_ID, _symbol_ID, sortOrder)
    VALUES (
             (
             SELECT ID
             FROM   tMyFavoriteList
             WHERE  name = _list
             )
           , (
             SELECT ID
             FROM   tSymbol
             WHERE  ticker   = _favTicker
             AND    exchange = _exch
             )
           , 0
           );
    SET _favorites = INSERT(_favorites,1,_nextlen + 1,'');
  END LOOP;
  SELECT _resultSet as ticker;
  END ;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE SymbolsWithHighestPercentileIncrease(_exch VARCHAR(9), _timeFrame INT)
BEGIN
WITH
  RankedPrices AS (
    SELECT     t.type, s.fullname, s.ticker, p.intraday, p.adjustedClose
               -- We only need one ranking: from newest to oldest
             , ROW_NUMBER() OVER (PARTITION BY p._symbol_ID ORDER BY p.intraday DESC) AS rn_desc
    FROM       tPrice_ST      AS p
    INNER JOIN tSymbol        AS s ON p._symbol_ID = s.ID
    INNER JOIN tType          AS t ON t.ID         = s._type_ID
    WHERE      s.exchange      = _exch
    AND        s.tickerStatus  = 'active'
  )
  SELECT    RP_E.type          AS 'Instrument Type'
          , RP_E.fullname      AS 'Name'
          , ROUND(((RP_E.adjustedClose - RP_S.adjustedClose) / NULLIF(RP_S.adjustedClose, 0)) * 100, 2) AS 'Raise'
          , RP_E.ticker        AS 'Ticker'
          , RP_S.intraday      AS 'StartDate'
          , RP_E.intraday      AS 'EndDate'
          , RP_S.adjustedClose AS 'StartPrice'
          , RP_E.adjustedClose AS 'EndPrice'
            -- Calculate the percentage change, handling potential division by zero
  FROM      RankedPrices       AS RP_E
  LEFT JOIN RankedPrices       AS RP_S                -- Join the table to itself to find the start price
         ON RP_E.ticker         = RP_S.ticker
        AND RP_S.rn_desc        = (RP_E.rn_desc + _timeFrame - 1) -- The 30th trading day (1 + 29)
  WHERE     RP_E.rn_desc        = 1                   -- Select only the most recent price for each stock
  AND       RP_S.adjustedClose IS NOT NULL            -- Ensure we found a starting price
  ORDER BY  Raise DESC;
  END ;;
DELIMITER ;
<code><pre>