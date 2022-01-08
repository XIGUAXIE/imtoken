.class public Lim/imkey/imkeylibrary/core/wallet/Cosmos;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "Cosmos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    return-void
.end method

.method private static convertBits([BIIIIZ)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x1

    shl-int v2, v1, p4

    sub-int/2addr v2, v1

    add-int v3, p3, p4

    sub-int/2addr v3, v1

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, p2, :cond_2

    add-int v8, v5, p1

    .line 47
    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    ushr-int v9, v8, p3

    if-nez v9, :cond_1

    shl-int/2addr v7, p3

    or-int/2addr v7, v8

    and-int/2addr v7, v3

    add-int/2addr v6, p3

    :goto_1
    if-lt v6, p4, :cond_0

    sub-int/2addr v6, p4

    ushr-int v8, v7, v6

    and-int/2addr v8, v2

    .line 56
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 50
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Input value \'%X\' exceeds \'%d\' bit size"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p5, :cond_3

    if-lez v6, :cond_4

    sub-int/2addr p4, v6

    shl-int p0, v7, p4

    and-int/2addr p0, v2

    .line 61
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    if-ge v6, p3, :cond_5

    sub-int/2addr p4, v6

    shl-int p0, v7, p4

    and-int/2addr p0, v2

    if-nez p0, :cond_5

    .line 65
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 63
    :cond_5
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const-string p1, "Could not convert bits, invalid padding"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public displayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Cosmos;->getAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->cosmosCoinReg([B)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/Cosmos;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-object p1
.end method

.method public getAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 18
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Cosmos;->selectApplet()V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/Cosmos;->getCosmosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getCompressECKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v0

    .line 25
    array-length v2, v0

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lim/imkey/imkeylibrary/core/wallet/Cosmos;->convertBits([BIIIIZ)[B

    move-result-object p1

    const-string v0, "cosmos"

    invoke-static {v0, p1}, Lim/imkey/imkeylibrary/utils/Bech32;->encode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F636F736D6F73"

    return-object v0
.end method
