.class public Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signAsRecoverable(Lorg/bitcoinj/core/ECKey$ECDSASignature;[BLorg/bitcoinj/core/ECKey;Z)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 65
    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-static {v0, p0, v1, p3}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v0, 0x1b

    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    int-to-byte p1, v0

    .line 83
    iget-object p2, p0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 p3, 0x20

    invoke-static {p2, p3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    .line 84
    iget-object p0, p0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p0, p3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 86
    new-instance p3, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    invoke-direct {p3, p1, p2, p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object p3

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signedMessageToKey([BLorg/consenlabs/tokencore/wallet/transaction/SignatureData;Z)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 30
    array-length v0, v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v5, "r must be 32 bytes"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 31
    array-length v0, v1

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v0, "s must be 32 bytes"

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_4

    const/16 v2, 0x22

    if-gt v0, v2, :cond_4

    .line 40
    new-instance v2, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    new-instance v3, Ljava/math/BigInteger;

    .line 41
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    .line 42
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object p1

    invoke-direct {v5, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3, v5}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sub-int/2addr v0, v1

    if-eqz p2, :cond_2

    and-int/lit8 v0, v0, 0x3

    .line 49
    :cond_2
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    invoke-static {v0, v2, p0, p2}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 53
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    return-object p0

    .line 51
    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Could not recover public key from signature"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_4
    new-instance p0, Ljava/security/SignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Header byte out of range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
