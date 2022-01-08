.class public Lorg/bitcoinj/core/ECKey;
.super Ljava/lang/Object;
.source "ECKey.java"

# interfaces
.implements Lorg/bitcoinj/crypto/EncryptableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;,
        Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;,
        Lorg/bitcoinj/core/ECKey$ECDSASignature;
    }
.end annotation


# static fields
.field public static final AGE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private static final CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

.field public static FAKE_SIGNATURES:Z

.field public static final HALF_CURVE_ORDER:Ljava/math/BigInteger;

.field public static final PUBKEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;

.field private static final secureRandom:Ljava/security/SecureRandom;


# instance fields
.field protected creationTimeSeconds:J

.field protected encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

.field protected keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

.field protected final priv:Ljava/math/BigInteger;

.field protected final pub:Lorg/bitcoinj/crypto/LazyECPoint;

.field private pubKeyHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 96
    const-class v0, Lorg/bitcoinj/core/ECKey;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    .line 99
    new-instance v0, Lorg/bitcoinj/core/ECKey$1;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/ECKey;->AGE_COMPARATOR:Ljava/util/Comparator;

    .line 111
    new-instance v0, Lorg/bitcoinj/core/ECKey$2;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey$2;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/ECKey;->PUBKEY_COMPARATOR:Ljava/util/Comparator;

    const-string v0, "secp256k1"

    .line 121
    invoke-static {v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 136
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lorg/bitcoinj/crypto/LinuxSecureRandom;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/LinuxSecureRandom;-><init>()V

    .line 142
    :cond_0
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/FixedPointUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    .line 143
    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    sget-object v3, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 144
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 145
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/ECKey;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    .line 146
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/ECKey;->secureRandom:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    .line 643
    sput-boolean v0, Lorg/bitcoinj/core/ECKey;->FAKE_SIGNATURES:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 168
    sget-object v0, Lorg/bitcoinj/core/ECKey;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Lorg/bitcoinj/crypto/LazyECPoint;)V
    .locals 0
    .param p1    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 201
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/LazyECPoint;

    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 1
    .param p1    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 192
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 193
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 195
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 196
    new-instance p1, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;[B)V
    .locals 1
    .param p1    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;[BZ)V
    .locals 0
    .param p1    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ECKey requires at least private or public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    if-nez p2, :cond_2

    .line 376
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 377
    invoke-static {p1, p3}, Lorg/bitcoinj/core/ECKey;->getPointWithCompression(Lorg/spongycastle/math/ec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 378
    new-instance p2, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-direct {p2, p1}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    iput-object p2, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    goto :goto_1

    .line 383
    :cond_2
    new-instance p1, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object p3, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 177
    new-instance v1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, v2, p1}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    .line 178
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 179
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 181
    invoke-virtual {p1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 182
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    .line 183
    new-instance v0, Lorg/bitcoinj/crypto/LazyECPoint;

    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    iput-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    .line 184
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/crypto/EncryptedData;[BLorg/bitcoinj/crypto/KeyCrypter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 344
    check-cast v0, [B

    invoke-direct {p0, v0, p2}, Lorg/bitcoinj/core/ECKey;-><init>([B[B)V

    .line 346
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/crypto/KeyCrypter;

    iput-object p2, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    .line 347
    iput-object p1, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 332
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static compressPoint(Lorg/bitcoinj/crypto/LazyECPoint;)Lorg/bitcoinj/crypto/LazyECPoint;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->compressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static compressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-static {p0, v0}, Lorg/bitcoinj/core/ECKey;->getPointWithCompression(Lorg/spongycastle/math/ec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static decompressKey(Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 1016
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    .line 1017
    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    int-to-byte p1, p1

    const/4 v0, 0x0

    .line 1018
    aput-byte p1, p0, v0

    .line 1019
    sget-object p1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static decompressPoint(Lorg/bitcoinj/crypto/LazyECPoint;)Lorg/bitcoinj/crypto/LazyECPoint;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->isCompressed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->decompressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bitcoinj/crypto/LazyECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static decompressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-static {p0, v0}, Lorg/bitcoinj/core/ECKey;->getPointWithCompression(Lorg/spongycastle/math/ec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static encryptionIsReversible(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1136
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 1137
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object p2

    .line 1138
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object p1

    .line 1139
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1140
    sget-object p1, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string p2, "The check that encryption could be reversed failed for {}"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/bitcoinj/crypto/KeyCrypterException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1145
    sget-object p1, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/crypto/KeyCrypterException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v0
.end method

.method private static extractKeyFromASN1([B)Lorg/bitcoinj/core/ECKey;
    .locals 7

    .line 815
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 816
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/DLSequence;

    .line 817
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Input contains extra bytes"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 818
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->close()V

    .line 820
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DLSequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v4, "Input does not appear to be an ASN.1 OpenSSL EC private key"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 822
    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Input is of wrong version"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 825
    invoke-virtual {p0, v3}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 826
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x3

    .line 828
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/DLSequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 829
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v5, "Input has \'publicKey\' with bad tag number"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 830
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p0

    .line 831
    array-length v0, p0

    const/16 v5, 0x21

    if-eq v0, v5, :cond_4

    array-length v0, p0

    const/16 v6, 0x41

    if-ne v0, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    const-string v6, "Input has \'publicKey\' with invalid length"

    invoke-static {v0, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 832
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v6, 0x2

    if-lt v0, v6, :cond_5

    if-gt v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Input has \'publicKey\' with invalid encoding"

    .line 834
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 837
    array-length v0, p0

    if-ne v0, v5, :cond_6

    const/4 v2, 0x1

    .line 838
    :cond_6
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1, v2}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;[BZ)V

    .line 839
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v0

    .line 840
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key in ASN.1 structure does not match private key."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 843
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromASN1([B)Lorg/bitcoinj/core/ECKey;
    .locals 0

    .line 242
    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->extractKeyFromASN1([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static fromEncrypted(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/KeyCrypter;[B)Lorg/bitcoinj/core/ECKey;
    .locals 0

    .line 356
    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    .line 357
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/crypto/EncryptedData;

    iput-object p0, p2, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    .line 358
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/crypto/KeyCrypter;

    iput-object p0, p2, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    return-object p2
.end method

.method public static fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-static {p0, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 258
    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 259
    new-instance v1, Lorg/bitcoinj/core/ECKey;

    invoke-static {v0, p1}, Lorg/bitcoinj/core/ECKey;->getPointWithCompression(Lorg/spongycastle/math/ec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v1
.end method

.method public static fromPrivate([B)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 267
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 275
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v0, p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static fromPrivateAndPrecalculatedPublic(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)Lorg/bitcoinj/core/ECKey;
    .locals 1

    .line 284
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method public static fromPrivateAndPrecalculatedPublic([B[B)Lorg/bitcoinj/core/ECKey;
    .locals 3

    .line 293
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object p0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method public static fromPublicOnly(Lorg/spongycastle/math/ec/ECPoint;)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 303
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method public static fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 311
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method private static getPointWithCompression(Lorg/spongycastle/math/ec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 229
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isCompressed()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    .line 234
    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static isPubKeyCanonical([B)Z
    .locals 4

    .line 788
    array-length v0, p0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 790
    :cond_0
    aget-byte v0, p0, v2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 792
    array-length p0, p0

    const/16 v0, 0x41

    if-eq p0, v0, :cond_4

    return v2

    .line 794
    :cond_1
    aget-byte v0, p0, v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    aget-byte v0, p0, v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 796
    :cond_3
    :goto_0
    array-length p0, p0

    if-eq p0, v1, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static publicKeyFromPrivate(Ljava/math/BigInteger;Z)[B
    .locals 0

    .line 453
    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 454
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static publicPointFromPrivate(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 466
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 467
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 469
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    sget-object v1, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "recId must be positive"

    .line 966
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 967
    iget-object v2, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "r must be positive"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 968
    iget-object v2, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string v3, "s must be positive"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 969
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, p0

    const-wide/16 v5, 0x2

    .line 973
    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 974
    iget-object v4, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 982
    sget-object v4, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    .line 983
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    return-object v5

    :cond_3
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    const/4 v0, 0x1

    .line 989
    :cond_4
    invoke-static {v3, v0}, Lorg/bitcoinj/core/ECKey;->decompressKey(Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 991
    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_5

    return-object v5

    .line 994
    :cond_5
    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 1006
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 1007
    iget-object v0, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1008
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1009
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 1010
    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0, p2, p0, p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 1011
    invoke-virtual {p0, p3}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static signedMessageToKey(Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 902
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    array-length v0, p1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 910
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_2

    const/16 v4, 0x22

    if-gt v2, v4, :cond_2

    .line 915
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x21

    const/4 v6, 0x1

    invoke-static {p1, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 916
    new-instance v7, Ljava/math/BigInteger;

    invoke-static {p1, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v7, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 917
    new-instance p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    invoke-direct {p1, v4, v7}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 918
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->formatMessageForSigning(Ljava/lang/String;)[B

    move-result-object p0

    .line 921
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    const/16 v1, 0x1f

    if-lt v2, v1, :cond_0

    add-int/lit8 v2, v2, -0x4

    const/4 v0, 0x1

    :cond_0
    sub-int/2addr v2, v3

    .line 928
    invoke-static {v2, p1, p0, v0}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 930
    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Could not recover public key from signature"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 914
    :cond_2
    new-instance p0, Ljava/security/SignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Header byte out of range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 909
    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature truncated, expected 65 bytes and got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 905
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "Could not decode base64"

    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private toString(ZLorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 5

    .line 1254
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 1255
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pub HEX"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "priv HEX"

    .line 1258
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivateKeyAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "priv WIF"

    .line 1259
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/ECKey;->getPrivateKeyAsWiF(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1263
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "priv EXCEPTION"

    invoke-virtual {v0, v1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    goto :goto_1

    :catch_1
    nop

    .line 1267
    :cond_1
    :goto_1
    iget-wide v1, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    const-string p2, "creationTimeSeconds"

    .line 1268
    invoke-virtual {v0, p2, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 1269
    :cond_2
    iget-object p2, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    const-string v1, "keyCrypter"

    invoke-virtual {v0, v1, p2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    if-eqz p1, :cond_3

    .line 1271
    iget-object p1, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    const-string p2, "encryptedPrivateKey"

    invoke-virtual {v0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 1272
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result p1

    const-string p2, "isEncrypted"

    invoke-virtual {v0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 1273
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isPubKeyOnly()Z

    move-result p1

    const-string p2, "isPubKeyOnly"

    invoke-virtual {v0, p2, p1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 1274
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z
    .locals 4

    .line 703
    sget-boolean v0, Lorg/bitcoinj/core/ECKey;->FAKE_SIGNATURES:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 706
    :cond_0
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 708
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bitcoin/NativeSecp256k1;->verify([B[B[B)Z

    move-result p0
    :try_end_0
    .catch Lorg/bitcoin/NativeSecp256k1Util$AssertFailException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 710
    sget-object p1, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string p2, "Caught AssertFailException inside secp256k1"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 715
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>()V

    .line 716
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    sget-object v3, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    sget-object v3, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, p2, v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    .line 717
    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/ECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 719
    :try_start_1
    iget-object p2, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-virtual {v0, p0, p2, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    .line 723
    sget-object p1, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string p2, "Caught NPE inside bouncy castle"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static verify([B[B[B)Z
    .locals 1

    .line 736
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/bitcoin/NativeSecp256k1;->verify([B[B[B)Z

    move-result p0
    :try_end_0
    .catch Lorg/bitcoin/NativeSecp256k1Util$AssertFailException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 740
    sget-object p1, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string p2, "Caught AssertFailException inside secp256k1"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    .line 744
    :cond_0
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->decodeFromDER([B)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public decompress()Lorg/bitcoinj/core/ECKey;
    .locals 3

    .line 319
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/LazyECPoint;->isCompressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 322
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    iget-object v1, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v2}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->decompressPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/ECKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v0
.end method

.method public decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 1087
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "The keyCrypter being used to decrypt the key is different to the one that was used to encrypt it"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1091
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "This key is not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    invoke-interface {p1, v0, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object p1

    .line 1093
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 1094
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1095
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->decompress()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 1096
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1098
    iget-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/ECKey;->setCreationTimeSeconds(J)V

    return-object p1

    .line 1097
    :cond_4
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string p2, "Provided AES key is wrong"

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1

    .line 1112
    :cond_0
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "No key crypter available"

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doSign(Lorg/bitcoinj/core/Sha256Hash;Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 3

    .line 670
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x20

    .line 674
    invoke-static {p2, v0}, Lorg/bitcoinj/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p2

    .line 672
    invoke-static {p1, p2}, Lorg/bitcoin/NativeSecp256k1;->sign([B[B)[B

    move-result-object p1

    .line 676
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->decodeFromDER([B)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1
    :try_end_0
    .catch Lorg/bitcoin/NativeSecp256k1Util$AssertFailException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 678
    sget-object p2, Lorg/bitcoinj/core/ECKey;->log:Lorg/slf4j/Logger;

    const-string v0, "Caught AssertFailException inside secp256k1"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 682
    :cond_0
    sget-boolean v0, Lorg/bitcoinj/core/ECKey;->FAKE_SIGNATURES:Z

    if-eqz v0, :cond_1

    .line 683
    invoke-static {}, Lorg/bitcoinj/crypto/TransactionSignature;->dummy()Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p1

    return-object p1

    .line 684
    :cond_1
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v0, Lorg/spongycastle/crypto/signers/ECDSASigner;

    new-instance v1, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    .line 686
    new-instance v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, p2, v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    const/4 p2, 0x1

    .line 687
    invoke-virtual {v0, p2, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 688
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object p1

    .line 689
    new-instance v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object p1, p1, p2

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 1070
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v0

    .line 1072
    invoke-interface {p1, v0, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object p2

    .line 1073
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p2, p1, v0}, Lorg/bitcoinj/core/ECKey;->fromEncrypted(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/KeyCrypter;[B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 1074
    iget-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/ECKey;->setCreationTimeSeconds(J)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1211
    instance-of v2, p1, Lorg/bitcoinj/core/ECKey;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1212
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/ECKey;

    .line 1213
    iget-object v2, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    iget-object v3, p1, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    .line 1214
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    .line 1215
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    iget-object v3, p1, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    .line 1216
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    iget-object p1, p1, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    .line 1217
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public formatKeyWithAddress(ZLjava/lang/StringBuilder;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 5

    .line 1278
    invoke-virtual {p0, p3}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    const-string v1, "  addr:"

    .line 1279
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  hash160:"

    .line 1281
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    iget-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-string v0, "  creationTimeSeconds:"

    .line 1284
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "\n"

    .line 1285
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 1287
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-virtual {p0, p3}, Lorg/bitcoinj/core/ECKey;->toStringWithPrivate(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public getCreationTimeSeconds()J
    .locals 2

    .line 1048
    iget-wide v0, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    return-wide v0
.end method

.method public getEncryptedData()Lorg/bitcoinj/crypto/EncryptedData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1182
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getEncryptedPrivateKey()Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lorg/bitcoinj/crypto/EncryptedData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1191
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    return-object v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1162
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bitcoinj/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    :goto_0
    return-object v0
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1199
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    return-object v0
.end method

.method public getPrivKey()Ljava/math/BigInteger;
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    throw v0
.end method

.method public getPrivKeyBytes()[B
    .locals 2

    .line 1027
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyAsHex()Ljava/lang/String;
    .locals 2

    .line 1242
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyAsWiF(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 0

    .line 1250
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/ECKey;->getPrivateKeyEncoded(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKeyEncoded(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/DumpedPrivateKey;
    .locals 3

    .line 1039
    new-instance v0, Lorg/bitcoinj/core/DumpedPrivateKey;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bitcoinj/core/DumpedPrivateKey;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BZ)V

    return-object v0
.end method

.method public getPubKey()[B
    .locals 1

    .line 484
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/LazyECPoint;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getPubKeyHash()[B
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pubKeyHash:[B

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/LazyECPoint;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/ECKey;->pubKeyHash:[B

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pubKeyHash:[B

    return-object v0
.end method

.method public getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 489
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyAsHex()Ljava/lang/String;
    .locals 2

    .line 1246
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/LazyECPoint;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecretBytes()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1172
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPrivKey()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1224
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1225
    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/crypto/LazyECPoint;->isCompressed()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 1156
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->encryptedPrivateKey:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/bitcoinj/crypto/EncryptedData;->encryptedBytes:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPubKeyOnly()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWatching()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isPubKeyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeDecrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 1120
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public setCreationTimeSeconds(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1058
    iput-wide p1, p0, Lorg/bitcoinj/core/ECKey;->creationTimeSeconds:J

    return-void

    .line 1057
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set creation time to negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1
.end method

.method public sign(Lorg/bitcoinj/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 1
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 660
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1

    .line 659
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;-><init>()V

    throw p1

    .line 663
    :cond_1
    iget-object p2, p0, Lorg/bitcoinj/core/ECKey;->priv:Ljava/math/BigInteger;

    if-eqz p2, :cond_2

    .line 666
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->doSign(Lorg/bitcoinj/core/Sha256Hash;Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    return-object p1

    .line 664
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    throw p1
.end method

.method public signMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 855
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/ECKey;->signMessage(Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public signMessage(Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Ljava/lang/String;
    .locals 6
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 866
    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->formatMessageForSigning(Ljava/lang/String;)[B

    move-result-object p1

    .line 867
    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 868
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 872
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result v4

    invoke-static {v1, p2, p1, v4}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 873
    iget-object v4, v4, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    iget-object v5, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {v4, v5}, Lorg/bitcoinj/crypto/LazyECPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1b

    .line 880
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    const/16 p1, 0x41

    new-array p1, p1, [B

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 883
    iget-object v1, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    iget-object p2, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p2, v2}, Lorg/bitcoinj/core/Utils;->bigIntegerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p2

    const/16 v1, 0x21

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    new-instance p2, Ljava/lang/String;

    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 879
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toASN1()[B
    .locals 6

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v0

    .line 428
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 436
    new-instance v2, Lorg/spongycastle/asn1/DERSequenceGenerator;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    .line 437
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 438
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 439
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    sget-object v4, Lorg/bitcoinj/core/ECKey;->CURVE_PARAMS:Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x9/X9ECParameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 440
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    new-instance v4, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/DERSequenceGenerator;->addObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 441
    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERSequenceGenerator;->close()V

    .line 442
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;
    .locals 2

    .line 516
    new-instance v0, Lorg/bitcoinj/core/Address;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1230
    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/core/ECKey;->toString(ZLorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringWithPrivate(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1238
    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/core/ECKey;->toString(ZLorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey$ECDSASignature;)Z
    .locals 1

    .line 761
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/bitcoinj/core/ECKey;->verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z

    move-result p1

    return p1
.end method

.method public verify([B[B)Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/bitcoinj/core/ECKey;->verify([B[B[B)Z

    move-result p1

    return p1
.end method

.method public verifyMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 939
    invoke-static {p1, p2}, Lorg/bitcoinj/core/ECKey;->signedMessageToKey(Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 940
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    iget-object p2, p0, Lorg/bitcoinj/core/ECKey;->pub:Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/crypto/LazyECPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 941
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    const-string p2, "Signature did not match for message"

    invoke-direct {p1, p2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifyOrThrow(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey$ECDSASignature;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 780
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/bitcoinj/core/ECKey;->verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 781
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1}, Ljava/security/SignatureException;-><init>()V

    throw p1
.end method

.method public verifyOrThrow([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/ECKey;->verify([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 771
    :cond_0
    new-instance p1, Ljava/security/SignatureException;

    invoke-direct {p1}, Ljava/security/SignatureException;-><init>()V

    throw p1
.end method
