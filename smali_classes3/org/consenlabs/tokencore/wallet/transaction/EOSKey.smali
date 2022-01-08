.class public Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;
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

    .line 15
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static encodePublicKey([B)Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 45
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v0, 0x4

    .line 48
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 50
    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 51
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

.method public static fromPrivate([B)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;
    .locals 2

    .line 29
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;-><init>(I[B)V

    return-object v0
.end method

.method public static fromWIF(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;
    .locals 1

    .line 24
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static privateToEosPublicKey([B)Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;-><init>(I[B)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getEosPublicKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getECKey()Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->bytes:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    return-object v0
.end method

.method public getEosPublicKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->bytes:[B

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    .line 40
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->encodePublicKey([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->bytes:[B

    return-object v0
.end method
