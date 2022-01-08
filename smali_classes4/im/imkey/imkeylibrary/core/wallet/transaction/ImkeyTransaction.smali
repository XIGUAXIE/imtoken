.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;
.super Lorg/bitcoinj/core/Transaction;
.source "ImkeyTransaction.java"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method


# virtual methods
.method public serializeSegWitTransaction(Lorg/bitcoinj/core/Transaction$SigHash;ZII[J)[B
    .locals 5

    .line 44
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    invoke-direct {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>()V

    const-wide/16 v1, 0x2

    .line 45
    invoke-static {v1, v2, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 46
    invoke-virtual {v0, p3}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    int-to-long v3, v2

    .line 48
    invoke-virtual {p0, v3, v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/TransactionInput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 50
    aget-wide v3, p5, v2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/bitcoinj/core/Utils;->uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, p4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    :goto_1
    if-ge v1, p4, :cond_1

    int-to-long v2, v1

    .line 54
    invoke-virtual {p0, v2, v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p3

    .line 55
    invoke-virtual {p3, v0}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0x0

    .line 58
    invoke-static {p3, p4, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 60
    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/TransactionSignature;->calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I

    move-result p1

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    .line 61
    invoke-static {p1, p2, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public serializeTransaction(Lorg/bitcoinj/core/Transaction$SigHash;Z)[B
    .locals 3

    .line 28
    :try_start_0
    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/TransactionSignature;->calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I

    move-result p1

    .line 29
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImkeyTransaction;->bitcoinSerialize()[B

    move-result-object p2

    .line 31
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 32
    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    int-to-byte p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    .line 34
    invoke-static {p1, p2, v0}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
