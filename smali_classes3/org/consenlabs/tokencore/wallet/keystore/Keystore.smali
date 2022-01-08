.class public abstract Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
.super Ljava/lang/Object;
.source "Keystore.java"


# instance fields
.field crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

.field id:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decryptCiphertext(Ljava/lang/String;)[B
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decrypt(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->version:I

    return v0
.end method

.method public setCrypto(Lorg/consenlabs/tokencore/foundation/crypto/Crypto;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->id:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 35
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->version:I

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
