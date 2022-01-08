.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "ImKeyBitcoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;
    }
.end annotation


# static fields
.field private static final DUST_THRESHOLD:J = 0xaaaL


# instance fields
.field private amount:J

.field private changeIdx:I

.field private extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fee:J

.field private feeDis:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private locktime:J

.field private memo:Ljava/lang/String;

.field private outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;",
            ">;"
        }
    .end annotation
.end field

.field private payment:Ljava/lang/String;

.field private to:Ljava/lang/String;

.field private toDis:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ",
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

    .line 69
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->locktime:J

    .line 70
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->to:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->amount:J

    .line 72
    iput-wide p5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    .line 73
    iput-object p7, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    .line 74
    iput p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    .line 75
    iput-object p8, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->payment:Ljava/lang/String;

    .line 76
    iput-object p9, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->toDis:Ljava/lang/String;

    .line 77
    iput-object p10, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->from:Ljava/lang/String;

    .line 78
    iput-object p11, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->feeDis:Ljava/lang/String;

    const-wide/16 p1, 0xaaa

    cmp-long p5, p3, p1

    if-ltz p5, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_amount_less_than_minimum"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;IJJLjava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/ArrayList<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 86
    invoke-direct/range {v0 .. v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;-><init>(Ljava/lang/String;IJJLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p8

    .line 87
    iput-object v1, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->extra:Ljava/util/HashMap;

    return-void
.end method

.method private getHash160(Ljava/lang/String;)[B
    .locals 4

    .line 743
    invoke-static {p1}, Lorg/bitcoinj/core/Base58;->decodeChecked(Ljava/lang/String;)[B

    move-result-object p1

    .line 744
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 745
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method protected getAddressFromPubKey(Lorg/bitcoinj/core/NetworkParameters;[B)Ljava/lang/String;
    .locals 1

    .line 750
    invoke-static {p2}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p2

    .line 751
    new-instance v0, Lorg/bitcoinj/core/Address;

    invoke-direct {v0, p1, p2}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F627463"

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->amount:J

    return-wide v0
.end method

.method public getChangeIdx()I
    .locals 1

    .line 143
    iget v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    return-wide v0
.end method

.method public getLocktime()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->locktime:J

    return-wide v0
.end method

.method protected getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 736
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 737
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->CURVE_N:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->amount:J

    return-void
.end method

.method public setChangeIdx(I)V
    .locals 0

    .line 147
    iput p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    return-void
.end method

.method public setFee(J)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->memo:Ljava/lang/String;

    return-void
.end method

.method public setOutputs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->to:Ljava/lang/String;

    return-void
.end method

.method public signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 449
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    const-string v3, "/"

    .line 450
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->selectApplet()V

    const-string v3, "MAINNET"

    .line 457
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "imkey_sdk_illegal_argument"

    if-eqz v3, :cond_1

    const-string v1, "org.bitcoin.production"

    .line 458
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "TESTNET"

    .line 459
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "org.bitcoin.test"

    .line 460
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    .line 465
    :goto_0
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v5

    invoke-direct {v3, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 468
    new-instance v5, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v5}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v12}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/16 v13, 0x82

    .line 470
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 471
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 469
    invoke-static {v6, v5}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPubKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v5

    .line 473
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 476
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 478
    iget-object v7, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-static {v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->deriveChildKeyFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v7

    .line 479
    invoke-virtual {v7}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v7

    .line 482
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v1, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->verifyAddrSegwit(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 486
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 483
    :cond_2
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_address_mismatch_with_path"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v15, v5, [J

    .line 494
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v16, 0x0

    move-wide/from16 v6, v16

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 495
    invoke-virtual {v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 498
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_16

    .line 501
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getFee()J

    move-result-wide v18

    add-long v8, v8, v18

    sub-long v18, v6, v8

    .line 503
    iget-object v5, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->to:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    .line 506
    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 507
    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v5

    .line 509
    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getP2SHHeader()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 511
    :cond_5
    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v5

    .line 512
    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getAddressHeader()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v10, v5

    move-object v9, v6

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "1/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 517
    new-instance v6, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v6}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getP2SHHeader()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getSegWitAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 518
    invoke-direct {v0, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getHash160(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v8

    .line 522
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    const-wide/16 v5, 0xaaa

    cmp-long v20, v18, v5

    if-ltz v20, :cond_6

    .line 527
    invoke-static/range {v18 .. v19}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    const/4 v5, 0x2

    const/16 v20, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    const/16 v20, 0x0

    .line 532
    :goto_4
    iget-object v6, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->extra:Ljava/util/HashMap;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    const-string v13, "opReturn"

    .line 533
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 534
    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 535
    array-length v13, v6

    const/16 v12, 0x50

    if-gt v13, v12, :cond_7

    .line 538
    invoke-static {v6}, Lorg/bitcoinj/script/ScriptBuilder;->createOpReturnScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v4

    .line 539
    new-instance v6, Lorg/bitcoinj/core/TransactionOutput;

    sget-object v12, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-direct {v6, v1, v7, v12, v4}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 540
    invoke-virtual {v3, v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    add-int/lit8 v5, v5, 0x1

    move-object v12, v4

    move v4, v5

    goto :goto_5

    .line 536
    :cond_7
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v4}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move v4, v5

    move-object v12, v7

    .line 545
    :goto_5
    sget-object v6, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    move-object v5, v3

    const/4 v11, 0x2

    move-object/from16 v21, v8

    move v8, v13

    move-object v13, v9

    move v9, v4

    move-object/from16 v22, v10

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeSegWitTransaction(Lorg/bitcoinj/core/Transaction$SigHash;ZII[J)[B

    move-result-object v5

    const/4 v6, 0x4

    .line 546
    iget-object v7, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 547
    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 549
    iget-wide v6, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    invoke-static {v6, v7}, Lim/imkey/imkeylibrary/utils/ByteUtil;->longToByteArray(J)[B

    move-result-object v6

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v6, v11

    if-eqz v6, :cond_9

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_9
    move-object v9, v13

    .line 555
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [B

    const/4 v8, 0x0

    aput-byte v6, v7, v8

    new-array v9, v6, [B

    .line 557
    array-length v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v8

    invoke-static {v9, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    invoke-static {v7, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    .line 558
    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v7

    .line 559
    invoke-static {v7}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    invoke-static {v7}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v7

    new-array v9, v6, [B

    aput-byte v8, v9, v8

    new-array v10, v6, [B

    .line 560
    array-length v6, v7

    int-to-byte v6, v6

    aput-byte v6, v10, v8

    invoke-static {v10, v7}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    invoke-static {v9, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    .line 561
    invoke-static {v6, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    .line 564
    invoke-static {v8, v5}, Lim/imkey/imkeylibrary/core/Apdu;->btcSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v5

    const-string v6, "btc prepare...."

    .line 565
    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 566
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 567
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 569
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v6, v8, :cond_a

    const/16 v13, 0x78

    goto :goto_8

    :cond_a
    const/16 v13, 0x14

    .line 572
    :goto_8
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v8

    invoke-virtual {v8, v7, v13}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 573
    invoke-static {v7}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 576
    :cond_b
    new-instance v10, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 577
    new-instance v9, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v8, 0x0

    .line 580
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-string v7, "OutputStream error"

    const-string v6, "0x76a914%s88ac"

    if-ge v8, v5, :cond_c

    .line 582
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    .line 583
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    move-object/from16 v23, v7

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    .line 585
    invoke-virtual {v5}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 587
    new-instance v7, Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-static {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$100(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$200(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v24

    move/from16 v25, v8

    invoke-static/range {v24 .. v24}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v8

    invoke-direct {v7, v1, v5, v6, v8}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 588
    new-instance v8, Lorg/bitcoinj/core/TransactionInput;

    const/16 v24, 0x0

    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v26

    move-object v5, v8

    move-object v6, v1

    move-object/from16 v27, v1

    move-object/from16 v1, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v24

    move-object/from16 v28, v8

    move/from16 v24, v25

    move-object v8, v13

    move-object v13, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v12

    move-object v12, v10

    move-object/from16 v10, v26

    invoke-direct/range {v5 .. v10}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/core/Coin;)V

    .line 589
    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v5

    aput-wide v5, v15, v24

    move-object/from16 v5, v28

    .line 591
    invoke-virtual {v3, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 593
    :try_start_0
    invoke-static {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$200(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 594
    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v12}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 595
    invoke-virtual {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v5

    invoke-static {v5, v6, v13}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v24, 0x1

    move-object v10, v12

    move-object v9, v13

    move-object/from16 v12, v23

    move-object/from16 v1, v27

    const/4 v11, 0x2

    goto/16 :goto_9

    .line 597
    :catch_0
    new-instance v2, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v2, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    move-object v1, v7

    move-object v13, v9

    move-object/from16 v23, v12

    move-object v12, v10

    const/16 v3, 0x40

    .line 601
    invoke-virtual {v12}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v5}, Lim/imkey/imkeylibrary/core/Apdu;->btcSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v3

    const/16 v5, -0x80

    .line 602
    invoke-virtual {v13}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v5, v7}, Lim/imkey/imkeylibrary/core/Apdu;->btcSegwitPrepare(B[B)Ljava/util/List;

    move-result-object v5

    .line 603
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 605
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v5, v8}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    goto :goto_a

    .line 610
    :cond_d
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 612
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 613
    new-instance v8, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v8}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 614
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 615
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v10

    const-string v11, "0014%s"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 616
    invoke-virtual {v10}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v12

    invoke-static {v12}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 617
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 622
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12, v8}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    .line 624
    invoke-virtual {v10}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v10

    invoke-static {v10}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 625
    array-length v11, v10

    const/4 v12, 0x1

    add-int/2addr v11, v12

    new-array v11, v11, [B

    .line 626
    array-length v13, v10

    int-to-byte v13, v13

    const/4 v15, 0x0

    aput-byte v13, v11, v15

    .line 627
    array-length v13, v10

    invoke-static {v10, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    invoke-virtual {v8, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 630
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-static {v10, v8}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 632
    invoke-virtual {v9}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v9

    invoke-static {v9, v10, v8}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 633
    invoke-virtual {v8}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 634
    array-length v9, v8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-array v9, v9, [B

    .line 635
    array-length v11, v8

    int-to-byte v11, v11

    const/4 v12, 0x0

    aput-byte v11, v9, v12

    .line 636
    array-length v11, v8

    invoke-static {v8, v12, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-static {v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 640
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 641
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    int-to-byte v11, v11

    const/4 v12, 0x0

    aput-byte v11, v10, v12

    .line 642
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    const/4 v13, 0x1

    invoke-static {v11, v12, v10, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    invoke-static {v9, v10}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v8

    .line 645
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v13

    if-ne v7, v9, :cond_e

    const/4 v9, 0x1

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9, v13, v8}, Lim/imkey/imkeylibrary/core/Apdu;->btcSegwitSign(Ljava/lang/Boolean;I[B)Ljava/lang/String;

    move-result-object v8

    .line 646
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v9

    invoke-virtual {v9, v8}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 647
    invoke-static {v8}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 648
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "signResult"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/16 v9, 0x42

    const/4 v10, 0x2

    .line 649
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v10, 0x82

    .line 650
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 651
    new-instance v9, Lorg/bitcoinj/crypto/TransactionSignature;

    new-instance v12, Ljava/math/BigInteger;

    const/16 v13, 0x10

    invoke-direct {v12, v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v8, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v9, v12, v8}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 653
    invoke-virtual {v9}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToDER()[B

    move-result-object v8

    const/4 v9, 0x1

    new-array v11, v9, [B

    const/4 v12, 0x0

    aput-byte v9, v11, v12

    invoke-static {v8, v11}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v8

    .line 654
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    :cond_f
    const/4 v2, 0x2

    new-array v6, v2, [Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    .line 657
    new-instance v2, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-instance v2, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 660
    new-instance v2, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const/4 v2, 0x2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v2, :cond_15

    .line 662
    aget-object v7, v6, v8

    const-wide/16 v9, 0x2

    .line 663
    invoke-static {v9, v10, v7}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    if-nez v8, :cond_10

    const/4 v11, 0x0

    .line 665
    invoke-virtual {v7, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/4 v11, 0x1

    .line 666
    invoke-virtual {v7, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 669
    :cond_10
    new-instance v11, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {v11, v12, v13}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v11}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    const/4 v11, 0x0

    .line 670
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_11

    .line 671
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 672
    invoke-static {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$200(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 673
    invoke-virtual {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v13

    int-to-long v9, v13

    invoke-static {v9, v10, v7}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/16 v9, 0x17

    .line 676
    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/16 v9, 0x16

    .line 678
    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    .line 679
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 680
    invoke-virtual {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v9

    invoke-static {v9, v10, v7}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v11, v11, 0x1

    const-wide/16 v9, 0x2

    goto :goto_e

    .line 685
    :cond_11
    new-instance v9, Lorg/bitcoinj/core/VarInt;

    int-to-long v10, v4

    invoke-direct {v9, v10, v11}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v9}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 687
    iget-wide v9, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->amount:J

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 688
    new-instance v9, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {v22 .. v22}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v9}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 689
    invoke-virtual/range {v22 .. v22}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    if-eqz v20, :cond_12

    .line 691
    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 692
    new-instance v9, Lorg/bitcoinj/core/VarInt;

    invoke-virtual/range {v21 .. v21}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v10

    array-length v10, v10

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v9}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 693
    invoke-virtual/range {v21 .. v21}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    :cond_12
    if-eqz v23, :cond_13

    .line 697
    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 698
    new-instance v9, Lorg/bitcoinj/core/VarInt;

    move-object/from16 v10, v23

    array-length v11, v10

    int-to-long v11, v11

    invoke-direct {v9, v11, v12}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v9}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 699
    invoke-virtual {v7, v10}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    goto :goto_f

    :cond_13
    move-object/from16 v10, v23

    :goto_f
    if-nez v8, :cond_14

    const/4 v9, 0x0

    .line 703
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_14

    .line 705
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v11

    .line 706
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 707
    new-instance v13, Lorg/bitcoinj/core/VarInt;

    move-object v15, v3

    const-wide/16 v2, 0x2

    invoke-direct {v13, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v13}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 708
    new-instance v13, Lorg/bitcoinj/core/VarInt;

    array-length v2, v12

    int-to-long v2, v2

    invoke-direct {v13, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v13}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 709
    invoke-virtual {v7, v12}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 710
    new-instance v2, Lorg/bitcoinj/core/VarInt;

    invoke-virtual {v11}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v12, v3

    invoke-direct {v2, v12, v13}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    .line 711
    invoke-virtual {v11}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x1

    move-object v3, v15

    const/4 v2, 0x2

    goto :goto_10

    :cond_14
    move-object v15, v3

    .line 715
    iget-wide v2, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->locktime:J

    invoke-static {v2, v3, v7}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v10

    move-object v3, v15

    const/4 v2, 0x2

    goto/16 :goto_d

    :cond_15
    const/4 v2, 0x0

    .line 717
    aget-object v2, v6, v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 718
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 721
    aget-object v4, v6, v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 723
    new-instance v5, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    invoke-direct {v5, v3, v4, v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    .line 725
    :catch_1
    new-instance v2, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v2, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_16
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_insufficient_funds"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_17
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v4}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 261
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    const-string v3, "/"

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xfc

    if-gt v3, v4, :cond_14

    .line 271
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->selectApplet()V

    const-string v3, "MAINNET"

    .line 274
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "imkey_sdk_illegal_argument"

    if-eqz v3, :cond_1

    const-string v1, "org.bitcoin.production"

    .line 275
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "TESTNET"

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "org.bitcoin.test"

    .line 277
    invoke-static {v1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    .line 282
    :goto_0
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-direct {v3, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 285
    new-instance v5, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v5}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x82

    .line 287
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 286
    invoke-static {v9, v5}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPubKeyFromBytes([B[B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v5

    .line 290
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    .line 292
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 294
    iget-object v11, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-static {v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->deriveChildKeyFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v11

    .line 295
    invoke-virtual {v11}, Lorg/bitcoinj/crypto/DeterministicKey;->getPubKey()[B

    move-result-object v11

    .line 298
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v1, v11}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->verifyAddr(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 302
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 299
    :cond_2
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_address_mismatch_with_path"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-wide/16 v10, 0x0

    .line 307
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 308
    invoke-virtual {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_2

    .line 311
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-ltz v5, :cond_12

    .line 316
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v12

    invoke-static {v12, v13}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getTo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 319
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAmount()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getFee()J

    move-result-wide v14

    add-long/2addr v12, v14

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xaaa

    cmp-long v5, v10, v12

    if-ltz v5, :cond_5

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "1/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    new-instance v12, Lim/imkey/imkeylibrary/core/wallet/Btc;

    invoke-direct {v12}, Lim/imkey/imkeylibrary/core/wallet/Btc;-><init>()V

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getAddressHeader()I

    move-result v13

    invoke-virtual {v12, v13, v5}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {v10, v11}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v10

    invoke-static {v1, v5}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 328
    :cond_5
    iget-object v5, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->extra:Ljava/util/HashMap;

    if-eqz v5, :cond_7

    const-string v10, "opReturn"

    .line 329
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 330
    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 331
    array-length v10, v5

    const/16 v11, 0x50

    if-gt v10, v11, :cond_6

    .line 334
    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createOpReturnScript([B)Lorg/bitcoinj/script/Script;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_3

    .line 332
    :cond_6
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v4}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_7
    :goto_3
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v3, v4, v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeTransaction(Lorg/bitcoinj/core/Transaction$SigHash;Z)[B

    move-result-object v4

    .line 340
    iget-object v5, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-byte v5, v5

    const/4 v10, 0x4

    aput-byte v5, v4, v10

    .line 341
    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 343
    iget-wide v11, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    invoke-static {v11, v12}, Lim/imkey/imkeylibrary/utils/ByteUtil;->longToByteArray(J)[B

    move-result-object v5

    .line 344
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getTo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    rem-int/2addr v11, v12

    if-eqz v11, :cond_8

    .line 349
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    new-array v5, v7, [B

    aput-byte v7, v5, v8

    new-array v11, v7, [B

    .line 355
    array-length v13, v4

    int-to-byte v13, v13

    aput-byte v13, v11, v8

    invoke-static {v11, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    invoke-static {v5, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 356
    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v5

    .line 357
    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v5

    new-array v11, v7, [B

    aput-byte v8, v11, v8

    new-array v13, v7, [B

    .line 358
    array-length v14, v5

    int-to-byte v14, v14

    aput-byte v14, v13, v8

    invoke-static {v13, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    invoke-static {v11, v5}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v5

    .line 359
    invoke-static {v5, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    const/16 v5, 0x41

    .line 363
    invoke-static {v5, v8, v4}, Lim/imkey/imkeylibrary/core/Apdu;->btcPrepare(BB[B)Ljava/util/List;

    move-result-object v4

    const-string v5, "btc prepare...."

    .line 364
    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 365
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 366
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v13, 0x14

    .line 368
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    if-ne v5, v14, :cond_9

    const/16 v13, 0x78

    .line 371
    :cond_9
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v14

    invoke-virtual {v14, v11, v13}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 372
    invoke-static {v11}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 375
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 376
    invoke-virtual {v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v11

    invoke-virtual {v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v13

    int-to-long v13, v13

    new-instance v15, Lorg/bitcoinj/script/Script;

    invoke-virtual {v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v15, v5}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v3, v11, v13, v14, v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_5

    .line 378
    :cond_b
    new-instance v4, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;

    invoke-direct {v4, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v7

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_11

    const/4 v13, 0x0

    .line 384
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_d

    mul-int/lit8 v14, v11, 0x5

    if-lt v13, v14, :cond_c

    add-int/lit8 v14, v11, 0x1

    mul-int/lit8 v14, v14, 0x5

    if-ge v13, v14, :cond_c

    .line 386
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v14}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v15

    int-to-long v6, v15

    new-instance v15, Lorg/bitcoinj/script/Script;

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v15, v12}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v4, v14, v6, v7, v15}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_8

    .line 388
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-virtual {v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getVout()I

    move-result v7

    int-to-long v14, v7

    new-instance v7, Lorg/bitcoinj/script/Script;

    new-array v12, v8, [B

    invoke-direct {v7, v12}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v4, v6, v14, v15, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    .line 391
    :goto_8
    sget-object v6, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v4, v6, v8}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->serializeTransaction(Lorg/bitcoinj/core/Transaction$SigHash;Z)[B

    move-result-object v6

    .line 392
    array-length v7, v6

    add-int/lit8 v7, v7, -0xd

    new-array v12, v7, [B

    .line 393
    invoke-static {v6, v10, v12, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v6, v13

    .line 394
    aput-byte v6, v12, v8

    .line 395
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    const/16 v7, -0x80

    invoke-static {v12}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lim/imkey/imkeylibrary/core/Apdu;->btcPrepareInput(BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 396
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->clearInputs()V

    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x82

    const/4 v7, 0x1

    const/4 v12, 0x2

    goto/16 :goto_7

    :cond_d
    mul-int/lit8 v6, v11, 0x5

    :goto_9
    add-int/lit8 v7, v11, 0x1

    mul-int/lit8 v12, v7, 0x5

    if-ge v6, v12, :cond_10

    .line 401
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-lt v6, v12, :cond_e

    goto/16 :goto_b

    .line 404
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    .line 407
    invoke-virtual {v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v0, v1, v12}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAddressFromPubKey(Lorg/bitcoinj/core/NetworkParameters;[B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 408
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    goto :goto_a

    .line 411
    :cond_f
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v7

    :goto_a
    int-to-long v12, v6

    .line 414
    invoke-virtual {v3, v12, v13}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v12

    .line 416
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;

    invoke-static {v14}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 417
    invoke-static {v6, v14, v13}, Lim/imkey/imkeylibrary/core/Apdu;->btcSign(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 418
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v15

    invoke-virtual {v15, v13}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 419
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signResult"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff1a"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 421
    invoke-static {v13}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 v8, 0x42

    const/4 v15, 0x2

    .line 422
    invoke-virtual {v13, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x82

    .line 423
    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v13, "\n********************"

    .line 425
    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 426
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " r:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 427
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " s:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 429
    new-instance v13, Lorg/bitcoinj/crypto/TransactionSignature;

    new-instance v14, Ljava/math/BigInteger;

    const/16 v15, 0x10

    invoke-direct {v14, v10, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v8, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v13, v14, v8}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 430
    invoke-static {v13, v7}, Lim/imkey/imkeylibrary/core/wallet/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;[B)Lorg/bitcoinj/script/Script;

    move-result-object v7

    invoke-virtual {v12, v7}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x4

    goto/16 :goto_9

    :cond_10
    :goto_b
    move v11, v7

    const/16 v6, 0x82

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v12, 0x2

    goto/16 :goto_6

    .line 435
    :cond_11
    invoke-virtual {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->bitcoinSerialize()[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    new-instance v3, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    invoke-direct {v3, v1, v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 312
    :cond_12
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_insufficient_funds"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_13
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {v1, v4}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_14
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_exceeded_max_utxo_number"

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImKeyBitcoinTransaction{to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", amount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->amount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", outputs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->outputs:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", memo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->memo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->fee:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", changeIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->changeIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyAddr(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z
    .locals 2

    .line 756
    invoke-virtual {p0, p2, p3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAddressFromPubKey(Lorg/bitcoinj/core/NetworkParameters;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 760
    :cond_0
    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->getAddressFromPubKey(Lorg/bitcoinj/core/NetworkParameters;[B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected verifyAddrSegwit(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;[B)Z
    .locals 3

    .line 768
    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 769
    array-length v1, p3

    const/16 v2, 0x41

    if-ne v1, v2, :cond_0

    .line 770
    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_0
    new-instance p3, Lim/imkey/imkeylibrary/core/wallet/Wallet;

    invoke-direct {p3}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    invoke-virtual {p2}, Lorg/bitcoinj/core/NetworkParameters;->getP2SHHeader()I

    move-result p2

    invoke-virtual {p3, p2, v0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->calcSegWitAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 775
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
