.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;
.super Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;
.source "ImKeyOmniTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;
    }
.end annotation


# static fields
.field private static final MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;


# instance fields
.field private btcChangeAmount:J

.field private hashOutputs:[B

.field private omniExtraScript:Lorg/bitcoinj/script/Script;

.field private outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;",
            ">;"
        }
    .end annotation
.end field

.field private propertyId:I

.field private receiver:Lorg/bitcoinj/core/Address;

.field private receiverScriptPubKey:[B

.field private final redeemScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Lorg/bitcoinj/core/Address;

.field private senderScriptPubKey:[B

.field private totalBtcAmount:J

.field private final witnesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x222

    .line 44
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/util/ArrayList<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 61
    invoke-direct/range {v0 .. v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;-><init>(Ljava/lang/String;IJJLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->witnesses:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->redeemScripts:Ljava/util/List;

    move/from16 v0, p6

    .line 63
    iput v0, v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->propertyId:I

    .line 64
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->calcTotalBtcAmount()J

    move-result-wide v0

    iput-wide v0, v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->totalBtcAmount:J

    .line 65
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->minimumBtcAmount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    return-void
.end method

.method private calcTotalBtcAmount()J
    .locals 5

    .line 503
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 504
    invoke-virtual {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 507
    :cond_0
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->minimumBtcAmount()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    return-wide v1

    .line 508
    :cond_1
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_insufficient_funds"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createOmniExtraData(J)Lorg/bitcoinj/script/Script;
    .locals 4

    .line 528
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const-string v1, "0x6f6d6e6900000000"

    .line 530
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 531
    iget v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->propertyId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 532
    invoke-static {v1, v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v1

    .line 533
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 534
    invoke-static {v1, p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    const/16 p2, 0x6a

    .line 536
    invoke-virtual {v0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p2

    .line 537
    invoke-virtual {p2, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method private hashSequence()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 521
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 522
    invoke-virtual {v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    return-object v0
.end method

.method private minimumBtcAmount()J
    .locals 4

    .line 514
    sget-object v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getFee()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 251
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    const-string v3, "/"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "MAINNET"

    .line 257
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "org.bitcoin.production"

    .line 258
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "TESTNET"

    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "org.bitcoin.test"

    .line 260
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    .line 266
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->selectApplet()V

    .line 268
    new-instance v9, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v3

    invoke-direct {v9, v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 271
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v3}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x82

    .line 273
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 274
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 272
    invoke-static {v4, v3}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPubKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    .line 276
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 279
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 280
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 281
    invoke-virtual {v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getDerivedPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->deriveChildKeyFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v5

    .line 285
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->verifyAddrSegwit(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 288
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 286
    :cond_2
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_address_mismatch_with_path"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_3
    iget-wide v3, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    sget-object v5, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v5, v5, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_10

    .line 295
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v14, v3, [J

    .line 297
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 301
    invoke-virtual {v3}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v3

    .line 303
    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getP2SHHeader()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 305
    :cond_4
    invoke-static {v3}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v3

    .line 306
    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getAddressHeader()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v15, v3

    move-object v8, v4

    .line 310
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v3

    iput-object v3, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    .line 311
    invoke-virtual {v3}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v7

    .line 312
    iget-wide v3, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    invoke-static {v3, v4}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v9, v3, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 314
    sget-object v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v3, v3, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v3, v4}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v9, v3, v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 316
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getAmount()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->createOmniExtraData(J)Lorg/bitcoinj/script/Script;

    move-result-object v3

    iput-object v3, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    .line 317
    sget-object v3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iget-object v4, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v9, v3, v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 320
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v3, v9

    move/from16 p1, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, p1

    move-object/from16 p2, v8

    move-object v8, v14

    invoke-virtual/range {v3 .. v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeSegWitTransaction(Lorg/bitcoinj/core/Transaction$SigHash;ZII[J)[B

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getFee()J

    move-result-wide v4

    invoke-static {v4, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->longToByteArray(J)[B

    move-result-object v4

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x2

    rem-int/2addr v4, v8

    if-eqz v4, :cond_5

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object/from16 v5, p2

    move-object v4, v5

    .line 327
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    new-array v4, v10, [B

    aput-byte v10, v4, v11

    new-array v5, v10, [B

    .line 330
    array-length v6, v3

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    invoke-static {v5, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    invoke-static {v4, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    .line 331
    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v4

    .line 332
    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v4

    new-array v5, v10, [B

    aput-byte v11, v5, v11

    new-array v6, v10, [B

    .line 333
    array-length v7, v4

    int-to-byte v7, v7

    aput-byte v7, v6, v11

    invoke-static {v6, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    invoke-static {v5, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 334
    invoke-static {v4, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    .line 336
    invoke-static {v11, v3}, Lim/imkey/imkeylibrary/core/Apdu;->omniSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v3

    const-string v4, "btc prepare...."

    .line 337
    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 338
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 339
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 341
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v10

    if-ne v4, v6, :cond_6

    const/16 v7, 0x78

    goto :goto_5

    :cond_6
    const/16 v7, 0x14

    .line 344
    :goto_5
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {v5}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 348
    :cond_7
    new-instance v6, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v6}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 349
    new-instance v5, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    .line 351
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v12, "OutputStream error"

    const-string v7, "0x76a914%s88ac"

    if-ge v4, v3, :cond_8

    .line 353
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    .line 354
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    new-array v8, v10, [Ljava/lang/Object;

    .line 356
    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 358
    new-instance v8, Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v3

    int-to-long v10, v3

    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-direct {v8, v1, v10, v11, v3}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 359
    new-instance v10, Lorg/bitcoinj/core/TransactionInput;

    const/4 v11, 0x0

    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v20

    move-object v3, v10

    move/from16 v21, v4

    move-object v4, v1

    move-object/from16 v22, v1

    move-object v1, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v17, v15

    const/4 v15, 0x2

    move-object/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/core/Coin;)V

    .line 360
    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v3

    aput-wide v3, v14, v21

    .line 362
    invoke-virtual {v9, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 364
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 365
    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4, v11}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 366
    invoke-virtual/range {v18 .. v18}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v21, 0x1

    move-object v5, v1

    move-object v6, v11

    move-object/from16 v15, v17

    move-object/from16 v1, v22

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x82

    goto/16 :goto_6

    .line 368
    :catch_0
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v12}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object v1, v5

    move-object v11, v6

    move-object/from16 v17, v15

    const/4 v15, 0x2

    const/16 v3, 0x40

    .line 372
    invoke-virtual {v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v3, v4}, Lim/imkey/imkeylibrary/core/Apdu;->omniSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v3

    const/16 v4, -0x80

    .line 373
    invoke-virtual {v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v4, v1}, Lim/imkey/imkeylibrary/core/Apdu;->omniSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v1

    .line 374
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 376
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v3, v5}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    goto :goto_7

    .line 382
    :cond_9
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 384
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 385
    new-instance v5, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 387
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v8

    const-string v9, "0014%s"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    .line 388
    invoke-virtual {v8}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v10

    invoke-static {v10}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v11, v14

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 389
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 394
    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10, v5}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 396
    invoke-virtual {v8}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v8

    invoke-static {v8}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 397
    array-length v9, v8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-array v9, v9, [B

    .line 398
    array-length v11, v8

    int-to-byte v11, v11

    const/4 v14, 0x0

    aput-byte v11, v9, v14

    .line 399
    array-length v11, v8

    invoke-static {v8, v14, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    invoke-virtual {v5, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 402
    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8, v5}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 404
    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 405
    invoke-virtual {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 406
    array-length v8, v5

    const/4 v9, 0x1

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 407
    array-length v10, v5

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    .line 408
    array-length v10, v5

    invoke-static {v5, v11, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getDerivedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const/4 v9, 0x1

    add-int/2addr v6, v9

    new-array v6, v6, [B

    .line 413
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x0

    aput-byte v9, v6, v10

    .line 414
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    const/4 v11, 0x1

    invoke-static {v9, v10, v6, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-static {v8, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    .line 418
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v11

    if-ne v4, v6, :cond_a

    const/16 v19, 0x1

    goto :goto_9

    :cond_a
    const/16 v19, 0x0

    :goto_9
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6, v11, v5}, Lim/imkey/imkeylibrary/core/Apdu;->btcSegwitSign(Ljava/lang/Boolean;I[B)Ljava/lang/String;

    move-result-object v5

    .line 419
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    invoke-virtual {v6, v5}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v5}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signResult"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/16 v6, 0x42

    .line 422
    invoke-virtual {v5, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x82

    .line 423
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 424
    new-instance v6, Lorg/bitcoinj/crypto/TransactionSignature;

    new-instance v10, Ljava/math/BigInteger;

    const/16 v11, 0x10

    invoke-direct {v10, v8, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v6, v10, v5}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 426
    invoke-virtual {v6}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToDER()[B

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [B

    const/4 v10, 0x0

    aput-byte v6, v8, v10

    invoke-static {v5, v8}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    .line 427
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_b
    new-array v2, v15, [Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    .line 430
    new-instance v4, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-instance v4, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 433
    new-instance v4, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v15, :cond_f

    .line 435
    aget-object v4, v2, v14

    const-wide/16 v5, 0x2

    .line 436
    invoke-static {v5, v6, v4}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    if-nez v14, :cond_c

    const/4 v7, 0x0

    .line 438
    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/4 v7, 0x1

    .line 439
    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 442
    :cond_c
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    const/4 v7, 0x0

    .line 443
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 444
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 445
    invoke-virtual {v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 446
    invoke-virtual {v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10, v4}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/16 v9, 0x17

    .line 449
    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/16 v9, 0x16

    .line 451
    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 452
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 453
    invoke-virtual {v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 458
    :cond_d
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    move/from16 v8, p1

    int-to-long v9, v8

    invoke-direct {v7, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 460
    iget-wide v9, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 461
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {v16 .. v16}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 462
    invoke-virtual/range {v16 .. v16}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 464
    sget-object v7, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v9, v7, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 465
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 466
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    const-wide/16 v9, 0x0

    .line 469
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v4}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 470
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    iget-object v9, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v9}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v9

    array-length v9, v9

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 471
    iget-object v7, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v7}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    if-nez v14, :cond_e

    const/4 v7, 0x0

    .line 474
    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_e

    .line 476
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v9

    .line 477
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 478
    new-instance v11, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v11, v5, v6}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v11}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 479
    new-instance v11, Lorg/bitcoinj/core/VarInt;

    array-length v5, v10

    int-to-long v5, v5

    invoke-direct {v11, v5, v6}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v11}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 480
    invoke-virtual {v4, v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 481
    new-instance v5, Lorg/bitcoinj/core/VarInt;

    invoke-virtual {v9}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v10, v6

    invoke-direct {v5, v10, v11}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v5}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 482
    invoke-virtual {v9}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v5, 0x2

    goto :goto_c

    .line 486
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getLocktime()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 p1, v8

    goto/16 :goto_a

    :cond_f
    const/4 v1, 0x0

    .line 488
    aget-object v1, v2, v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 489
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 492
    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    new-instance v4, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    invoke-direct {v4, v3, v2, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 496
    :catch_1
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v12}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_10
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_amount_less_than_minimum"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_11
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_sdk_illegal_argument"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 89
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    const-string v3, "/"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xfc

    if-gt v3, v4, :cond_e

    .line 99
    iget-wide v3, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    sget-object v5, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v5, v5, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_d

    const-string v3, "MAINNET"

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "org.bitcoin.production"

    .line 105
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "TESTNET"

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "org.bitcoin.test"

    .line 107
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    .line 113
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->selectApplet()V

    .line 115
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-direct {v3, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 118
    new-instance v4, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v4}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x82

    .line 120
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 119
    invoke-static {v8, v4}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPubKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v4

    .line 123
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 125
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 126
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 127
    invoke-virtual {v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getDerivedPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->deriveChildKeyFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v10

    .line 128
    invoke-virtual {v10}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v10

    .line 130
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v1, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->verifyAddr(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 134
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_address_mismatch_with_path"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v4

    iput-object v4, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    .line 139
    iget-wide v9, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->btcChangeAmount:J

    invoke-static {v9, v10}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    iget-object v9, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    invoke-virtual {v3, v4, v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 142
    sget-object v4, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getTo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 145
    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getAmount()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->createOmniExtraData(J)Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 148
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v3, v4, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeTransaction(Lorg/bitcoinj/core/Transaction$SigHash;Z)[B

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getFee()J

    move-result-wide v9

    invoke-static {v9, v10}, Lim/imkey/imkeylibrary/utils/ByteUtil;->longToByteArray(J)[B

    move-result-object v9

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getTo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/core/Address;->getVersion()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 156
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    rem-int/2addr v10, v11

    if-eqz v10, :cond_4

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 159
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 163
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-byte v9, v9

    const/4 v10, 0x4

    aput-byte v9, v4, v10

    new-array v9, v6, [B

    aput-byte v6, v9, v7

    new-array v12, v6, [B

    .line 164
    array-length v13, v4

    int-to-byte v13, v13

    aput-byte v13, v12, v7

    invoke-static {v12, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    invoke-static {v9, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 165
    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v9

    .line 166
    invoke-static {v9}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v9

    new-array v12, v6, [B

    aput-byte v7, v12, v7

    new-array v13, v6, [B

    .line 167
    array-length v14, v9

    int-to-byte v14, v14

    aput-byte v14, v13, v7

    invoke-static {v13, v9}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v9

    invoke-static {v12, v9}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v9

    .line 168
    invoke-static {v9, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    const-string v9, "btc prepare...."

    .line 170
    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v9

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lim/imkey/imkeylibrary/core/Apdu;->omniPrepareData(BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x78

    invoke-virtual {v9, v4, v12}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 174
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v12

    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v13

    int-to-long v13, v13

    new-instance v15, Lorg/bitcoinj/script/Script;

    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v15, v9}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v3, v12, v13, v14, v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_2

    .line 177
    :cond_5
    new-instance v4, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-direct {v4, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x5

    add-int/2addr v9, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_b

    const/4 v13, 0x0

    .line 182
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_7

    mul-int/lit8 v14, v12, 0x5

    if-lt v13, v14, :cond_6

    add-int/lit8 v14, v12, 0x1

    mul-int/lit8 v14, v14, 0x5

    if-ge v13, v14, :cond_6

    .line 184
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v14}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v15

    int-to-long v5, v15

    new-instance v15, Lorg/bitcoinj/script/Script;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v15, v11}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v4, v14, v5, v6, v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_5

    .line 186
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v6

    int-to-long v14, v6

    new-instance v6, Lorg/bitcoinj/script/Script;

    new-array v11, v7, [B

    invoke-direct {v6, v11}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v4, v5, v14, v15, v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    .line 188
    :goto_5
    sget-object v5, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v4, v5, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeTransaction(Lorg/bitcoinj/core/Transaction$SigHash;Z)[B

    move-result-object v5

    .line 189
    array-length v6, v5

    add-int/lit8 v6, v6, -0xd

    new-array v11, v6, [B

    .line 190
    invoke-static {v5, v10, v11, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v5, v13

    .line 191
    aput-byte v5, v11, v7

    .line 192
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v5

    const/16 v6, -0x80

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lim/imkey/imkeylibrary/core/Apdu;->btcPrepareInput(BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-static {v5}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->clearInputs()V

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x82

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto/16 :goto_4

    :cond_7
    mul-int/lit8 v5, v12, 0x5

    :goto_6
    add-int/lit8 v6, v12, 0x1

    mul-int/lit8 v11, v6, 0x5

    if-ge v5, v11, :cond_a

    .line 198
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lt v5, v11, :cond_8

    goto/16 :goto_8

    .line 201
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 204
    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v0, v1, v13}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getAddressFromPubKey(Lorg/bitcoinj/core/NetworkParameters;[B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 205
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    goto :goto_7

    .line 208
    :cond_9
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v11

    :goto_7
    int-to-long v13, v5

    .line 211
    invoke-virtual {v3, v13, v14}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v13

    .line 213
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getDerivedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    .line 214
    invoke-static {v5, v14, v6}, Lim/imkey/imkeylibrary/core/Apdu;->btcSign(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v15

    invoke-virtual {v15, v6}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 216
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signResult"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\uff1a"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 218
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 v7, 0x42

    const/4 v15, 0x2

    .line 220
    invoke-virtual {v6, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x82

    .line 221
    invoke-virtual {v6, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n********************"

    .line 224
    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " r:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " s:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    new-instance v7, Lorg/bitcoinj/crypto/TransactionSignature;

    new-instance v14, Ljava/math/BigInteger;

    const/16 v15, 0x10

    invoke-direct {v14, v10, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v6, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;->getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v7, v14, v6}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 229
    invoke-static {v7, v11}, Lim/imkey/imkeylibrary/core/wallet/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;[B)Lorg/bitcoinj/script/Script;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x4

    goto/16 :goto_6

    :cond_a
    :goto_8
    move v12, v6

    const/16 v5, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto/16 :goto_3

    .line 236
    :cond_b
    invoke-virtual {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->bitcoinSerialize()[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    invoke-direct {v3, v1, v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 109
    :cond_c
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_sdk_illegal_argument"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_d
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_amount_less_than_minimum"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_e
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_exceeded_max_utxo_number"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
