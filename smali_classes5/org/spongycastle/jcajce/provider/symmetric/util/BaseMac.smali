.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private keySize:I

.field private macEngine:Lorg/spongycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    .line 29
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 34
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;III)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    .line 29
    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 43
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 44
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeType:I

    .line 45
    iput p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 46
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    .line 133
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    .line 126
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 61
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_2

    .line 63
    check-cast p1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PBE requires PBE parameters to be set."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_2
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object p1, v0

    goto :goto_0

    .line 82
    :cond_3
    instance-of v0, p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    check-cast p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    invoke-virtual {p2}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->copyMap(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 88
    new-instance p2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object p1, p2

    .line 95
    :goto_0
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 92
    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown parameter type."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineReset()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    return-void
.end method
