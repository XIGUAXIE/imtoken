.class public final Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;
.super Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
.source "PBKDF2Crypto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/consenlabs/tokencore/foundation/crypto/Crypto<",
        "Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;",
        ">;"
    }
.end annotation


# static fields
.field static final PBKDF2:Ljava/lang/String; = "pbkdf2"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;-><init>()V

    const-string v0, "pbkdf2"

    .line 19
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;->kdf:Ljava/lang/String;

    return-void
.end method

.method public static createPBKDF2Crypto()Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;
    .locals 3

    .line 23
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;-><init>()V

    const/16 v1, 0x20

    .line 24
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v1

    .line 25
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->createPBKDF2Params()Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;

    move-result-object v2

    .line 26
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->setSalt(Ljava/lang/String;)V

    .line 27
    iput-object v2, v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    return-object v0
.end method


# virtual methods
.method public generateDerivedKey([B)[B
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    check-cast v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;

    .line 34
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hmac-sha256"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 39
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getC()I

    move-result v0

    invoke-virtual {v1, p1, v2, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    const/16 p1, 0x100

    .line 40
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "prf_unsupported"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
