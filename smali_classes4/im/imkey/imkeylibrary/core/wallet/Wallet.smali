.class public Lim/imkey/imkeylibrary/core/wallet/Wallet;
.super Ljava/lang/Object;
.source "Wallet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedEthAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    .line 239
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 240
    aget-char v4, v0, v3

    .line 241
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x7

    if-le v5, v6, :cond_0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 242
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static publicKeyToAddress([B)Ljava/lang/String;
    .locals 2

    .line 168
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    .line 169
    array-length v0, p0

    add-int/lit8 v0, v0, -0x14

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 170
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B
    .locals 2

    .line 249
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPrivKey()[B

    move-result-object v0

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 251
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p0}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_not_bind_check"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signVerify([B[B)Z
    .locals 2

    .line 263
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getSePubKey()[B

    move-result-object v0

    const/16 v1, 0x41

    new-array v1, v1, [B

    .line 264
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    .line 269
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 270
    invoke-virtual {v0, p0, p1}, Lorg/bitcoinj/core/ECKey;->verify([B[B)Z

    move-result p0

    return p0

    .line 265
    :cond_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_not_bind_check"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected addChecksum([B)[B
    .locals 4

    .line 210
    array-length v0, p1

    add-int/lit8 v1, v0, 0x4

    .line 211
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 212
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p1

    const/4 v3, 0x4

    .line 214
    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method protected calComprsPub(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x42

    const/4 v1, 0x2

    .line 189
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    .line 190
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v2, 0x2

    .line 194
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "03"

    goto :goto_0

    :cond_0
    const-string p1, "02"

    .line 197
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public calcSegWitAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 156
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 157
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "0x0014%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 158
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p2

    .line 159
    array-length v1, p2

    add-int/2addr v1, v0

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v1, v1, [B

    int-to-byte p1, p1

    .line 160
    aput-byte p1, v1, v2

    .line 161
    array-length p1, p2

    invoke-static {p2, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length p1, p2

    add-int/2addr p1, v0

    invoke-static {v1, v2, p1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII)[B

    move-result-object p1

    .line 163
    array-length p2, p2

    add-int/2addr p2, v0

    invoke-static {p1, v2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-static {v1}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected generatePath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    const-string v5, "m"

    .line 221
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x27

    if-ne v5, v7, :cond_1

    .line 224
    new-instance v5, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4, v6}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_1
    new-instance v5, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getAid()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "need overwirte this method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getChildNumberPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCosmosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->cosmosPub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signVerify([B[B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 117
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x82

    .line 120
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_signature_verify_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDepth(Ljava/lang/String;)I
    .locals 3

    const-string v0, "/"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 128
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getEosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 78
    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->eosPub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signVerify([B[B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x82

    .line 103
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_signature_verify_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEthXpubHex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->ethXpub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signVerify([B[B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x82

    .line 73
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_signature_verify_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getFingerprint([B)I
    .locals 2

    .line 206
    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method protected getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->btcXpub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v2, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signVerify([B[B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_signature_verify_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected pub2Address(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p2

    .line 150
    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->toBase58(I[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected selectApplet()V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected sendApdu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toBase58(I[B)Ljava/lang/String;
    .locals 4

    .line 174
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x4

    add-int/2addr v0, v2

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v3, 0x0

    .line 175
    aput-byte p1, v0, v3

    .line 176
    array-length p1, p2

    invoke-static {p2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length p1, p2

    add-int/2addr p1, v1

    invoke-static {v0, v3, p1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII)[B

    move-result-object p1

    .line 178
    array-length p2, p2

    add-int/2addr p2, v1

    invoke-static {p1, v3, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 180
    invoke-static {v0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
