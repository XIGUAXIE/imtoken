.class public Lorg/bitcoinj/script/ScriptBuilder;
.super Ljava/lang/Object;
.source "ScriptBuilder.java"


# instance fields
.field private chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/ScriptChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/script/Script;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    return-void
.end method

.method public static createCLTVPaymentChannelInput(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 476
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelInput([B[B)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createCLTVPaymentChannelInput([B[B)Lorg/bitcoinj/script/Script;
    .locals 1

    .line 480
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 481
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 482
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    const/4 p0, 0x1

    .line 483
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    .line 484
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createCLTVPaymentChannelOutput(Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;
    .locals 2

    const/4 v0, 0x0

    .line 439
    invoke-static {p0, v0}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object p0

    .line 440
    array-length v0, p0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 443
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    .line 444
    invoke-virtual {p2}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p2

    const/16 v0, 0xad

    invoke-virtual {p2, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p2

    const/16 v0, 0x67

    .line 445
    invoke-virtual {p2, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p2

    .line 446
    invoke-virtual {p2, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 p2, 0xb1

    invoke-virtual {p0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 p2, 0x75

    invoke-virtual {p0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 p2, 0x68

    .line 447
    invoke-virtual {p0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    .line 448
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0

    .line 441
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Time too large to encode as 5-byte int"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCLTVPaymentChannelP2SHInput([B[BLorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;
    .locals 1

    .line 467
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 468
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 469
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    const/4 p0, 0x1

    .line 470
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    .line 471
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 472
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createCLTVPaymentChannelP2SHRefund(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;
    .locals 2

    .line 459
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 460
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v1, 0x0

    aput-byte v1, p0, v1

    .line 461
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 462
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 463
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createCLTVPaymentChannelRefund(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;
    .locals 2

    .line 452
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 453
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v1, 0x0

    aput-byte v1, p0, v1

    .line 454
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 455
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;
    .locals 1
    .param p0    # Lorg/bitcoinj/crypto/TransactionSignature;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 257
    :goto_0
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;
    .locals 1
    .param p0    # Lorg/bitcoinj/crypto/TransactionSignature;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 246
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 248
    :goto_0
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiSigInputScript(Ljava/util/List;)Lorg/bitcoinj/script/Script;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/TransactionSignature;",
            ">;)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/crypto/TransactionSignature;

    .line 279
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 282
    invoke-static {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;[B)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createMultiSigInputScript([Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 287
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScript(Ljava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiSigInputScriptBytes(Ljava/util/List;)Lorg/bitcoinj/script/Script;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    invoke-static {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;[B)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiSigInputScriptBytes(Ljava/util/List;[B)Lorg/bitcoinj/script/Script;
    .locals 3
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    .line 320
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 321
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 322
    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    .line 323
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 324
    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 327
    :cond_2
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createMultiSigOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 262
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 265
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 266
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 268
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    goto :goto_3

    .line 270
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    const/16 p0, 0xae

    .line 271
    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    .line 272
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createOpReturnScript([B)Lorg/bitcoinj/script/Script;
    .locals 2

    .line 434
    array-length v0, p0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 435
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;
    .locals 3

    .line 217
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->isP2SHAddress()Z

    move-result v0

    const/16 v1, 0xa9

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 220
    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 v0, 0x87

    .line 222
    invoke-virtual {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const/16 v2, 0x76

    .line 227
    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getHash160()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 v0, 0x88

    .line 230
    invoke-virtual {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 v0, 0xac

    .line 231
    invoke-virtual {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createOutputScript(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;
    .locals 1

    .line 238
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createP2SHMultiSigInputScript(Ljava/util/List;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/TransactionSignature;",
            ">;",
            "Lorg/bitcoinj/script/Script;",
            ")",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    .line 304
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getNumberOfSignaturesRequiredToSpend()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    new-array v3, v1, [B

    .line 306
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/crypto/TransactionSignature;

    .line 309
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;[B)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createP2SHOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    .line 414
    invoke-static {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->createRedeemScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object p0

    .line 415
    invoke-static {p0}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;
    .locals 0

    .line 405
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p0

    .line 406
    invoke-static {p0}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createP2SHOutputScript([B)Lorg/bitcoinj/script/Script;
    .locals 2

    .line 397
    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 398
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->op(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static createRedeemScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)",
            "Lorg/bitcoinj/script/Script;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 424
    sget-object p1, Lorg/bitcoinj/core/ECKey;->PUBKEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 425
    invoke-static {p0, v0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method

.method public static updateScriptWithSignature(Lorg/bitcoinj/script/Script;[BIII)Lorg/bitcoinj/script/Script;
    .locals 9

    .line 342
    new-instance v0, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v0}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    .line 343
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p0

    .line 344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int v2, v1, p4

    add-int/lit8 v3, v2, -0x1

    .line 349
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v3

    const-string v5, "ScriptSig is already filled with signatures"

    .line 350
    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 353
    invoke-interface {p0, v4, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/script/ScriptChunk;

    .line 354
    invoke-virtual {v0, v5}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(Lorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {p0, p3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/script/ScriptChunk;

    if-ne v5, p2, :cond_2

    .line 362
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    .line 365
    :cond_2
    invoke-virtual {v7, v4}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 366
    invoke-virtual {v0, v7}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(Lorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sub-int v3, v1, p3

    sub-int/2addr v3, p4

    if-ge v5, v3, :cond_5

    if-ne v5, p2, :cond_4

    .line 375
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    const/4 v6, 0x1

    goto :goto_3

    .line 378
    :cond_4
    new-instance v3, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(Lorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    :cond_5
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/script/ScriptChunk;

    .line 385
    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(Lorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    goto :goto_4

    .line 387
    :cond_6
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 388
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addChunk(Lorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bigNum(IJ)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-nez v3, :cond_0

    new-array p2, v2, [B

    goto/16 :goto_5

    .line 179
    :cond_0
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 181
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    :goto_1
    cmp-long v5, p2, v0

    if-eqz v5, :cond_2

    const-wide/16 v5, 0xff

    and-long/2addr v5, p2

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 184
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    shr-long/2addr p2, v5

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    const/16 p3, 0x80

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    int-to-byte p2, p3

    .line 191
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 196
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    or-int/2addr p2, p3

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result p2

    new-array p3, p2, [B

    :goto_4
    if-ge v2, p2, :cond_6

    .line 201
    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    move-object p2, p3

    .line 207
    :goto_5
    new-instance p3, Lorg/bitcoinj/script/ScriptChunk;

    array-length v0, p2

    invoke-direct {p3, v0, p2}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {p0, p1, p3}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected bigNum(J)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/bitcoinj/script/ScriptBuilder;->bigNum(IJ)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lorg/bitcoinj/script/Script;
    .locals 2

    .line 212
    new-instance v0, Lorg/bitcoinj/script/Script;

    iget-object v1, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bitcoinj/script/Script;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public data(I[B)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 5

    .line 88
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 90
    array-length v1, p2

    const/16 v2, 0x4c

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 92
    :cond_0
    array-length v1, p2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 93
    aget-byte p2, p2, v3

    if-lt p2, v4, :cond_1

    const/16 v1, 0x10

    if-gt p2, v1, :cond_1

    .line 95
    invoke-static {p2}, Lorg/bitcoinj/script/Script;->encodeToOpN(I)I

    move-result p2

    move v2, p2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :cond_2
    array-length v1, p2

    if-ge v1, v2, :cond_3

    .line 99
    array-length v2, p2

    goto :goto_0

    .line 100
    :cond_3
    array-length v1, p2

    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    goto :goto_0

    .line 102
    :cond_4
    array-length p2, p2

    const/high16 v1, 0x10000

    if-ge p2, v1, :cond_5

    const/16 v2, 0x4d

    .line 107
    :goto_0
    new-instance p2, Lorg/bitcoinj/script/ScriptChunk;

    invoke-direct {p2, v2, v0}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1

    .line 105
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unimplemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public data([B)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 79
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->data(I[B)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public number(IJ)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/16 p2, 0x4f

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/script/ScriptBuilder;->op(II)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x10

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 126
    new-instance v0, Lorg/bitcoinj/script/ScriptChunk;

    long-to-int p3, p2

    invoke-static {p3}, Lorg/bitcoinj/script/Script;->encodeToOpN(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {v0, p2, p3}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/script/ScriptBuilder;->bigNum(IJ)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public number(J)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/bitcoinj/script/ScriptBuilder;->number(IJ)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public op(I)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->op(II)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public op(II)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 2

    const/16 v0, 0x4e

    if-le p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 74
    new-instance v0, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public smallNum(I)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bitcoinj/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/script/ScriptBuilder;->smallNum(II)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method

.method public smallNum(II)Lorg/bitcoinj/script/ScriptBuilder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Cannot encode negative numbers with smallNum"

    .line 160
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0x10

    if-gt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Cannot encode numbers larger than 16 with smallNum"

    .line 161
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 162
    new-instance v0, Lorg/bitcoinj/script/ScriptChunk;

    invoke-static {p2}, Lorg/bitcoinj/script/Script;->encodeToOpN(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[B)V

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/script/ScriptBuilder;->addChunk(ILorg/bitcoinj/script/ScriptChunk;)Lorg/bitcoinj/script/ScriptBuilder;

    move-result-object p1

    return-object p1
.end method
