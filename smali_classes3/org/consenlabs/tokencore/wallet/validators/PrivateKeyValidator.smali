.class public final Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;
.super Ljava/lang/Object;
.source "PrivateKeyValidator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/validators/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/consenlabs/tokencore/wallet/validators/Validator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private privateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->privateKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic validate()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->validate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/lang/String;
    .locals 4

    const-string v0, "privatekey_invalid"

    .line 29
    :try_start_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->privateKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->privateKey:Ljava/lang/String;

    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 31
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 32
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_1

    .line 37
    invoke-static {v1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    .line 38
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 39
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->privateKey:Ljava/lang/String;

    return-object v0

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :catch_0
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
