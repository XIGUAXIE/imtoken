.class public Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;
.super Lorg/bitcoinj/core/VersionedChecksummedBytes;
.source "EOSKey.java"


# direct methods
.method protected constructor <init>(I[B)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(I[B)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static fromPrivate([B)Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;
    .locals 2

    .line 29
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;-><init>(I[B)V

    return-object v0
.end method

.method public static fromWIF(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;
    .locals 1

    .line 24
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;

    invoke-direct {v0, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPublicKeyApdu([B)Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 51
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v0, 0x4

    .line 54
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 56
    invoke-static {p0, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static privateToPublicKey([B)Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;-><init>(I[B)V

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getECKey()Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 61
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->bytes:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyAsHex()Ljava/lang/String;
    .locals 4

    .line 37
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->bytes:[B

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    .line 39
    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 40
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v1, 0x4

    .line 43
    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EOS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
