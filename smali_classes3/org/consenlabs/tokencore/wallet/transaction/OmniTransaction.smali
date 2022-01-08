.class public Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;
.super Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;
.source "OmniTransaction.java"


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
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;",
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

    .line 35
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p7

    .line 52
    invoke-direct/range {v0 .. v7}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;-><init>(Ljava/lang/String;IJJLjava/util/List;)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->redeemScripts:Ljava/util/List;

    .line 54
    iput p6, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->propertyId:I

    .line 55
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->calcTotalBtcAmount()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->totalBtcAmount:J

    .line 56
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->minimumBtcAmount()J

    move-result-wide p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    return-void
.end method

.method private calcTotalBtcAmount()J
    .locals 5

    .line 198
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

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

    check-cast v3, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 199
    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->minimumBtcAmount()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    return-wide v1

    .line 203
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "insufficient_funds"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calcWitness()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 263
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 264
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 265
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 266
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->redeemScripts:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    new-array v3, v4, [B

    aput-byte v0, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 271
    :cond_0
    invoke-direct {p0, v1}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getPubKey(I)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v3

    const-string v5, "0014%s"

    new-array v6, v4, [Ljava/lang/Object;

    .line 273
    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 274
    iget-object v6, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->redeemScripts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    new-array v3, v4, [B

    aput-byte v0, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 282
    :cond_1
    new-instance v5, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 283
    new-instance v6, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v7, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 284
    invoke-virtual {v6, v5}, Lorg/bitcoinj/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 285
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "0x1976a914%s88ac"

    new-array v7, v4, [Ljava/lang/Object;

    .line 288
    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 291
    new-instance v6, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v6}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const-wide/16 v7, 0x2

    .line 292
    invoke-static {v7, v8, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 293
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashPrevouts()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 294
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashSequence()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 295
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 296
    invoke-virtual {v6, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 297
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 299
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashOutputs:[B

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    iget-wide v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->locktime:J

    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const-wide/16 v2, 0x1

    .line 302
    invoke-static {v2, v3, v6}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 304
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 306
    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    .line 307
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .line 308
    :goto_1
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 309
    invoke-static {v3, v4}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    .line 310
    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v2

    new-array v3, v4, [B

    aput-byte v4, v3, v0

    invoke-static {v2, v3}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v2

    .line 314
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    .line 317
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Calc witness error"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createOmniExtraData(J)Lorg/bitcoinj/script/Script;
    .locals 4

    .line 529
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const-string v1, "0x6f6d6e6900000000"

    .line 535
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 536
    iget v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->propertyId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 537
    invoke-static {v1, v2}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v1

    .line 538
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 539
    invoke-static {v1, p1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    const/16 p2, 0x6a

    .line 541
    invoke-virtual {v0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p2

    .line 542
    invoke-virtual {p2, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    .line 543
    invoke-virtual {p1}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method private getPubKey(I)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 250
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 251
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getPubKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 255
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    .line 256
    invoke-static {p1, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1
.end method

.method private hashOutputs()[B
    .locals 8

    .line 223
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    .line 227
    new-instance v4, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    iget-wide v6, v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->value:J

    invoke-static {v6, v7}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v6

    iget-object v2, v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->address:Lorg/bitcoinj/core/Address;

    invoke-direct {v4, v5, v3, v6, v2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    .line 228
    invoke-virtual {v4, v0}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getAmount()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->createOmniExtraData(J)Lorg/bitcoinj/script/Script;

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    .line 231
    new-instance v1, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 232
    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 236
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "hash utxos error"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hashPrevouts()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 214
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 215
    new-instance v3, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 216
    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    return-object v0
.end method

.method private hashSequence()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    .line 243
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 244
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    return-object v0
.end method

.method static hybridSignTest(Ljava/lang/String;JJIJLjava/util/ArrayList;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJIJ",
            "Ljava/util/ArrayList<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    const/4 v4, 0x0

    .line 172
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 174
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    .line 178
    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v8, [Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    aput-object v5, v0, v4

    aput-object v7, v0, v6

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 183
    new-instance v15, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;

    const-wide/16 v9, 0x2

    div-long v17, p3, v9

    move-object v9, v15

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-wide/from16 v13, v17

    move-object v8, v15

    move/from16 v15, p5

    move-object/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;-><init>(Ljava/lang/String;JJILjava/util/List;)V

    invoke-direct {v8, v1, v2, v4, v3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;ZLjava/util/List;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setTxHash(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5, v4}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setVout(I)V

    .line 186
    invoke-virtual {v8}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setTxHash(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v7, v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setVout(I)V

    .line 188
    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v9

    sub-long v9, v9, v17

    invoke-virtual {v7, v9, v10}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setAmount(J)V

    .line 189
    new-instance v5, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;

    move-object v9, v5

    move-object/from16 v10, p0

    move-wide/from16 v11, p6

    invoke-direct/range {v9 .. v16}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;-><init>(Ljava/lang/String;JJILjava/util/List;)V

    invoke-direct {v5, v1, v2, v6, v3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;ZLjava/util/List;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    aput-object v8, v1, v4

    aput-object v0, v1, v6

    .line 190
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "External unspent must be SegWit"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Must be 2 utxos when use usdt as fee"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private minimumBtcAmount()J
    .locals 4

    .line 209
    sget-object v0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getFee()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private segWitSignResult()Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 4

    const/4 v0, 0x1

    .line 455
    :try_start_0
    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->serializeTx(Z)[B

    move-result-object v0

    .line 456
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 459
    invoke-direct {p0, v2}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->serializeTx(Z)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    new-instance v3, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {v3, v1, v2, v0}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 463
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "OutputStream error"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serializeTx(Z)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/16 v1, 0x2

    .line 324
    invoke-static {v1, v2, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    :cond_0
    new-instance v5, Lorg/bitcoinj/core/VarInt;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v5}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v5, 0x0

    .line 331
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 332
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 334
    invoke-virtual {v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 335
    invoke-virtual {v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 337
    invoke-virtual {v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x17

    .line 339
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x16

    .line 341
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    iget-object v7, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->redeemScripts:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 344
    :cond_1
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signLegacyOmniSender()[B

    move-result-object v7

    .line 345
    new-instance v8, Lorg/bitcoinj/core/VarInt;

    array-length v9, v7

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v8}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 346
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 348
    :goto_1
    invoke-virtual {v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getSequence()J

    move-result-wide v6

    invoke-static {v6, v7, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 353
    :cond_2
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    .line 355
    new-instance v6, Lorg/bitcoinj/core/VarInt;

    int-to-long v7, v5

    invoke-direct {v6, v7, v8}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v6}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 356
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    .line 357
    iget-wide v7, v6, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->value:J

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 358
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    iget-object v8, v6, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->scriptData:[B

    array-length v8, v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 359
    iget-object v6, v6, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->scriptData:[B

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    .line 363
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 364
    new-instance v5, Lorg/bitcoinj/core/VarInt;

    iget-object v6, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v5}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 365
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v5}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 370
    :goto_3
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_5

    .line 371
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->witnesses:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 372
    array-length v6, v5

    if-ne v6, v3, :cond_4

    aget-byte v6, v5, v4

    if-nez v6, :cond_4

    .line 373
    aget-byte v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 375
    :cond_4
    new-instance v6, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v6, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v6}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 376
    new-instance v6, Lorg/bitcoinj/core/VarInt;

    array-length v7, v5

    int-to-long v7, v7

    invoke-direct {v6, v7, v8}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v6}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 377
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 378
    new-instance v5, Lorg/bitcoinj/core/VarInt;

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getPubKey(I)Lorg/bitcoinj/core/ECKey;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v5}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 379
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getPubKey(I)Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 384
    :cond_5
    iget-wide v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->locktime:J

    invoke-static {v1, v2, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;Z)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;ZLjava/util/List;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object p1

    return-object p1
.end method

.method private signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;ZLjava/util/List;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            "Z",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;"
        }
    .end annotation

    .line 393
    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V

    if-eqz p4, :cond_0

    .line 395
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    .line 397
    :cond_0
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->calcTotalBtcAmount()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->totalBtcAmount:J

    .line 399
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getFee()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    if-eqz p3, :cond_1

    .line 401
    sget-object v0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v2, v0, Lorg/bitcoinj/core/Coin;->value:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    .line 404
    :cond_1
    iget-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_8

    if-eqz p4, :cond_2

    const-wide/32 p1, 0x1406f40

    .line 410
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    .line 413
    :cond_2
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    .line 414
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 415
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->senderScriptPubKey:[B

    goto :goto_0

    .line 417
    :cond_3
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->senderScriptPubKey:[B

    .line 420
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    const/4 p4, 0x1

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    .line 421
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    if-eqz p3, :cond_5

    .line 424
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getTo()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    .line 425
    invoke-virtual {p2}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 426
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    goto :goto_1

    .line 428
    :cond_4
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    invoke-static {p2}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    .line 433
    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    .line 434
    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {p4}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v0

    iget-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->senderScriptPubKey:[B

    invoke-direct {p3, v0, v1, p4, v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;-><init>(JLorg/bitcoinj/core/Address;[B)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-wide p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    sget-object p4, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v0, p4, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long p4, p2, v0

    if-ltz p4, :cond_6

    .line 438
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    iget-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->changeAddress:Lorg/bitcoinj/core/Address;

    invoke-direct {p3, v0, v1, p4, p1}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;-><init>(JLorg/bitcoinj/core/Address;[B)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_6
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    if-eqz p1, :cond_7

    .line 442
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    sget-object p3, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide p3, p3, Lorg/bitcoinj/core/Coin;->value:J

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    invoke-direct {p2, p3, p4, v0, v1}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;-><init>(JLorg/bitcoinj/core/Address;[B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_7
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashOutputs()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashOutputs:[B

    .line 448
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->calcWitness()V

    .line 449
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->segWitSignResult()Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object p1

    return-object p1

    .line 405
    :cond_8
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "amount_less_than_minimum"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private signLegacyOmniSender()[B
    .locals 9

    .line 469
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 470
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 472
    new-instance v3, Lorg/bitcoinj/core/Transaction;

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v3, v4}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    const/4 v4, 0x2

    .line 475
    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Transaction;->setVersion(I)V

    .line 476
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 478
    iget-wide v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    sget-object v6, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v6, v6, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_6

    .line 482
    iget-wide v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    invoke-static {v4, v5}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 485
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    if-eqz v2, :cond_0

    .line 486
    sget-object v2, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v4, v2, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v4, v5}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    invoke-virtual {v3, v2, v4}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 489
    :cond_0
    sget-object v2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->omniExtraScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v3, v2, v4}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 492
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 493
    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v6

    int-to-long v6, v6

    new-instance v8, Lorg/bitcoinj/script/Script;

    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {v3, v5, v6, v7, v8}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_0

    .line 496
    :cond_1
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 498
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    iget-object v6, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5, v6}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    goto :goto_1

    .line 500
    :cond_2
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    iget-object v6, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5, v6}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 501
    invoke-static {v2, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    .line 506
    :goto_1
    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 507
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {v3, v1, v0, v4, v1}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    .line 508
    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v3

    .line 509
    new-instance v4, Lorg/bitcoinj/crypto/TransactionSignature;

    sget-object v5, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {v4, v3, v5, v1}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 510
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    invoke-static {v4}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    return-object v0

    .line 514
    :cond_3
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    invoke-virtual {v4}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitcoinj/script/Script;->createInputScript([B[B)[B

    move-result-object v0

    return-object v0

    .line 515
    :cond_4
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "not_support_send_target"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_5
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "can_not_found_private_key"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_6
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "amount_less_than_minimum"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signServerPayFeeOmniTx(Ljava/lang/String;JJIJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJIJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    .line 145
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    move-object/from16 v7, p8

    .line 151
    invoke-virtual {v0, v7}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setPublicKey(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setExternal(Z)V

    .line 154
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v7

    if-eqz v7, :cond_0

    new-array v7, v4, [Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    aput-object v5, v7, v3

    aput-object v0, v7, v6

    .line 158
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 159
    sget-object v8, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v8, v8, Lorg/bitcoinj/core/Coin;->value:J

    sub-long v8, p3, v8

    const-wide/16 v10, 0x2

    div-long v16, v8, v10

    .line 160
    new-instance v15, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;

    move-object v8, v15

    move-object/from16 v9, p0

    move-wide/from16 v10, p6

    move-wide/from16 v12, v16

    move/from16 v14, p5

    move-object v4, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;-><init>(Ljava/lang/String;JJILjava/util/List;)V

    invoke-direct {v4, v1, v2, v3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;Z)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setTxHash(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5, v3}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setVout(I)V

    .line 163
    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setTxHash(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v6}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setVout(I)V

    .line 165
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAmount()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v0, v8, v9}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->setAmount(J)V

    .line 166
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;

    move-object v8, v0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    invoke-direct/range {v8 .. v15}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;-><init>(Ljava/lang/String;JJILjava/util/List;)V

    invoke-direct {v0, v1, v2, v6}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signHybridUnspents(Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;Z)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    aput-object v4, v1, v3

    aput-object v0, v1, v6

    .line 167
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "External unspent must be SegWit"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Must be 2 utxos when use usdt as fee"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 3

    const-string p1, "P2WPKH"

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 117
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getTo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    .line 118
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    .line 124
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    .line 125
    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->senderScriptPubKey:[B

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    .line 129
    iget-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    sget-object p3, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v0, p3, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    .line 132
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    iget-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->senderScriptPubKey:[B

    invoke-direct {p2, v0, v1, p3, v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;-><init>(JLorg/bitcoinj/core/Address;[B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->outputs:Ljava/util/List;

    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;

    sget-object p3, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v0, p3, Lorg/bitcoinj/core/Coin;->value:J

    iget-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiver:Lorg/bitcoinj/core/Address;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->receiverScriptPubKey:[B

    invoke-direct {p2, v0, v1, p3, v2}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;-><init>(JLorg/bitcoinj/core/Address;[B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashOutputs()[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->hashOutputs:[B

    .line 136
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->calcWitness()V

    .line 137
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->segWitSignResult()Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object p1

    return-object p1

    .line 130
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "amount_less_than_minimum"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 7

    const-string p1, "NONE"

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->collectPrvKeysAndAddress(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 62
    new-instance p1, Lorg/bitcoinj/core/Transaction;

    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 64
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    sget-object p2, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-wide v2, p2, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_7

    .line 68
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    .line 69
    iget-wide v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->btcChangeAmount:J

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->sender:Lorg/bitcoinj/core/Address;

    invoke-virtual {p1, p2, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 72
    sget-object p2, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 75
    sget-object p2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getAmount()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->createOmniExtraData(J)Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    .line 77
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 78
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getTxHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getVout()I

    move-result v3

    int-to-long v3, v3

    new-instance v5, Lorg/bitcoinj/script/Script;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getScriptPubKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bitcoinj/script/Script;-><init>([B)V

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 81
    :goto_1
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 82
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    .line 84
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->prvKeys:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    check-cast v2, Ljava/math/BigInteger;

    .line 86
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4, v5}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 89
    invoke-static {v2, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    :goto_3
    int-to-long v3, p2

    .line 94
    invoke-virtual {p1, v3, v4}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->network:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 96
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-virtual {p1, p2, v0, v4, v1}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    .line 97
    invoke-virtual {v2, v4}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v4

    .line 98
    new-instance v5, Lorg/bitcoinj/crypto/TransactionSignature;

    sget-object v6, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {v5, v4, v6, v1}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 99
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-static {v5}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    goto :goto_4

    .line 102
    :cond_3
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-static {v5, v2}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 103
    :cond_4
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "not_support_send_target"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_5
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "can_not_found_private_key"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 111
    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {p3, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 65
    :cond_7
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "amount_less_than_minimum"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
