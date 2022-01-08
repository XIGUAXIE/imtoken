.class public Lim/imkey/imkeylibrary/core/wallet/Btc;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "Btc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    return-void
.end method


# virtual methods
.method public displayAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->btcCoinReg([B)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-object p1
.end method

.method public displaySegWitAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getSegWitAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->btcCoinReg([B)Ljava/lang/String;

    move-result-object p2

    .line 84
    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-object p1
.end method

.method public getAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->selectApplet()V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, p2, v0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x82

    .line 48
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->pub2Address(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F627463"

    return-object v0
.end method

.method public getSegWitAddress(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->selectApplet()V

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, p2, v0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x82

    .line 73
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->calcSegWitAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_sdk_illegal_argument"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getXpub(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 24
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->selectApplet()V

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p2, v0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x82

    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x4e

    .line 31
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 32
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getDepth(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Btc;->getFingerprint([B)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p0, p2}, Lim/imkey/imkeylibrary/core/wallet/Btc;->generatePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/ChildNumber;->i()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 p1, 0xc2

    .line 37
    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Btc;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Btc;->addChecksum([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
