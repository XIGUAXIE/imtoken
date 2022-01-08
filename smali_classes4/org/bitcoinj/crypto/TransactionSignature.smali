.class public Lorg/bitcoinj/crypto/TransactionSignature;
.super Lorg/bitcoinj/core/ECKey$ECDSASignature;
.source "TransactionSignature.java"


# instance fields
.field public final sighashFlags:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v0, v0, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 49
    iput p3, p0, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V
    .locals 1

    .line 54
    iget-object v0, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 55
    invoke-static {p2, p3}, Lorg/bitcoinj/crypto/TransactionSignature;->calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    return-void
.end method

.method public static calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I
    .locals 1

    .line 71
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 72
    iget p0, p0, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-eqz p1, :cond_2

    .line 74
    sget-object p1, Lorg/bitcoinj/core/Transaction$SigHash;->ANYONECANPAY:Lorg/bitcoinj/core/Transaction$SigHash;

    iget p1, p1, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    or-int/2addr p0, p1

    :cond_2
    return p0
.end method

.method public static decodeFromBitcoin([BZ)Lorg/bitcoinj/crypto/TransactionSignature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFromBitcoin([BZZ)Lorg/bitcoinj/crypto/TransactionSignature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 186
    invoke-static {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->isEncodingCanonical([B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance p0, Lorg/bitcoinj/core/VerificationException;

    const-string p1, "Signature encoding is not canonical."

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->decodeFromDER([B)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    .line 194
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->isCanonical()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 195
    :cond_2
    new-instance p0, Lorg/bitcoinj/core/VerificationException;

    const-string p1, "S-value is not canonical."

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_3
    :goto_1
    new-instance p2, Lorg/bitcoinj/crypto/TransactionSignature;

    iget-object v0, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    invoke-direct {p2, v0, p1, p0}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    return-object p2

    :catch_0
    move-exception p0

    .line 192
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Could not decode DER"

    invoke-direct {p1, p2, p0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static dummy()Lorg/bitcoinj/crypto/TransactionSignature;
    .locals 2

    .line 65
    sget-object v0, Lorg/bitcoinj/core/ECKey;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    .line 66
    new-instance v1, Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-direct {v1, v0, v0}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static isEncodingCanonical([B)Z
    .locals 8

    .line 92
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_9

    array-length v0, p0

    const/16 v2, 0x49

    if-le v0, v2, :cond_0

    goto/16 :goto_0

    .line 95
    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v3, Lorg/bitcoinj/core/Transaction$SigHash;->ANYONECANPAY:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v3, v3, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    not-int v3, v3

    and-int/2addr v0, v3

    .line 96
    sget-object v3, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v3, v3, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-lt v0, v3, :cond_9

    sget-object v3, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v3, v3, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-le v0, v3, :cond_1

    goto/16 :goto_0

    .line 100
    :cond_1
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x30

    if-ne v0, v3, :cond_9

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    array-length v3, p0

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v0, 0x5

    .line 104
    array-length v4, p0

    if-ge v3, v4, :cond_9

    if-nez v0, :cond_3

    goto :goto_0

    .line 106
    :cond_3
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v4, v0, v3

    add-int/lit8 v4, v4, 0x7

    .line 107
    array-length v5, p0

    if-ne v4, v5, :cond_9

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    .line 111
    aget-byte v5, p0, v4

    if-ne v5, v4, :cond_9

    const/4 v5, 0x4

    aget-byte v6, p0, v5

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    goto :goto_0

    :cond_5
    if-le v0, v2, :cond_6

    .line 113
    aget-byte v5, p0, v5

    if-nez v5, :cond_6

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v5, v0, -0x2

    .line 117
    aget-byte v5, p0, v5

    if-ne v5, v4, :cond_9

    aget-byte v4, p0, v0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    goto :goto_0

    :cond_7
    if-le v3, v2, :cond_8

    .line 119
    aget-byte v3, p0, v0

    if-nez v3, :cond_8

    add-int/2addr v0, v2

    aget-byte p0, p0, v0

    and-int/2addr p0, v7

    if-eq p0, v7, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    :goto_0
    return v1
.end method


# virtual methods
.method public anyoneCanPay()Z
    .locals 2

    .line 126
    iget v0, p0, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    sget-object v1, Lorg/bitcoinj/core/Transaction$SigHash;->ANYONECANPAY:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v1, v1, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public encodeToBitcoin()[B
    .locals 2

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->derByteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 147
    iget v1, p0, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sigHashMode()Lorg/bitcoinj/core/Transaction$SigHash;
    .locals 2

    .line 130
    iget v0, p0, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    and-int/lit8 v0, v0, 0x1f

    .line 131
    sget-object v1, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v1, v1, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-ne v0, v1, :cond_0

    .line 132
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    return-object v0

    .line 133
    :cond_0
    sget-object v1, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v1, v1, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-ne v0, v1, :cond_1

    .line 134
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    return-object v0

    .line 136
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    return-object v0
.end method

.method public toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 4

    .line 156
    new-instance v0, Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-super {p0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->sigHashMode()Lorg/bitcoinj/core/Transaction$SigHash;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    return-object v0
.end method
