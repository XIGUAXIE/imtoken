.class public Lim/imkey/imkeylibrary/core/wallet/Eos;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "Eos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    return-void
.end method

.method public static eosEcSign(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {p3}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    .line 63
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 64
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    :goto_0
    const/4 p1, 0x2

    new-array v0, p1, [B

    .line 66
    fill-array-data v0, :array_0

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    new-array v1, p1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    .line 68
    array-length v2, p3

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 69
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    invoke-static {v1, p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p3

    invoke-static {p1, p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 70
    invoke-static {p1, p2, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->signMessage([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x1t
        0x20t
    .end array-data
.end method


# virtual methods
.method public displayPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Eos;->getPubKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->eosCoinReg([B)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/Eos;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F656F73"

    return-object v0
.end method

.method public getPubKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Eos;->selectApplet()V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/Eos;->getEosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Eos;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 27
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v0, 0x4

    .line 30
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
