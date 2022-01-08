.class public Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;
.super Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
.source "SCryptCrypto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/consenlabs/tokencore/foundation/crypto/Crypto<",
        "Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;",
        ">;"
    }
.end annotation


# static fields
.field static final SCRYPT:Ljava/lang/String; = "scrypt"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;-><init>()V

    const-string v0, "scrypt"

    .line 22
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdf:Ljava/lang/String;

    return-void
.end method

.method public static createSCryptCrypto()Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;
    .locals 3

    .line 26
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;-><init>()V

    const/16 v1, 0x20

    .line 27
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v1

    .line 28
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->createSCryptParams()Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    move-result-object v2

    .line 29
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setSalt(Ljava/lang/String;)V

    .line 30
    iput-object v2, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    return-object v0
.end method

.method public static createV1HdSCryptCrypto(Ljava/lang/String;I)Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;
    .locals 3

    .line 35
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;-><init>()V

    .line 36
    new-instance v1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-direct {v1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;-><init>()V

    const/16 v2, 0x20

    .line 37
    invoke-virtual {v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setDklen(I)V

    .line 38
    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setN(I)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setP(I)V

    const/16 p1, 0x8

    .line 40
    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setR(I)V

    .line 41
    invoke-virtual {v1, p0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->setSalt(Ljava/lang/String;)V

    .line 42
    iput-object v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    return-object v0
.end method


# virtual methods
.method public generateDerivedKey([B)[B
    .locals 7

    .line 48
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getDklen()I

    move-result v6

    .line 49
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getN()I

    move-result v3

    .line 50
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getP()I

    move-result v5

    .line 51
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getR()I

    move-result v4

    .line 52
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, p1

    .line 54
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "scrypt_params_invalid"

    invoke-direct {v0, v1, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
